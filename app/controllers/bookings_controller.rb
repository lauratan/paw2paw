class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @user = current_user
    avails = Availability.where(sitter_id: params[:sitter_id])
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date).sort!
    end
  end

  def create
    @user = current_user
    
    @sitter = Sitter.find params[:sitter_id]

    @booking = Booking.new(booking_params)
    @booking.sitter_id = @sitter.id
    @booking.user_id = current_user.id
    
      if @booking.save 
        redirect_to sitter_path(@booking.sitter_id), notice: 'The booking request has sent to the sitter'
      end
    end

    private

    def booking_params
      params.require(:booking).permit(:date)
    end

end
