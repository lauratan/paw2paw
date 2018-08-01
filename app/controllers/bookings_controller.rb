class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @sitter = Sitter.find(params[:sitter_id])
    @user = current_user
  end

  def create
    @sitter = Sitter.find params[:sitter_id]
    @user = User.find_by(email: params[:booking][:email])

    @booking = Booking.new({
      user_id: @user.id,
      sitter_id: @sitter.id
    })

    if @booking.save! 
      redirect_to new_sitter_booking_booking_date_path(@sitter.id, @booking.id), notice: 'The booking request has been sent to the sitter'
    end
  end

end
