class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @sitter = Sitter.find(params[:sitter_id])
    @user = current_user
  end

  def create
    @sitter = Sitter.find params[:sitter_id]
    @user = User.find_by(email: params[:booking][:email])

    @booking = Booking.new(booking_params)

    if @booking.save! 
      redirect_to new_sitter_booking_booking_date_path(@sitter.id, @booking.id), notice: 'The booking request has been sent to the sitter'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(
        :dog_breed, 
        :dog_size, 
        :dog_age, 
        :dog_gender, 
        :info
      ).merge(user_id:@user.id, sitter_id:@sitter.id)
    end

end
