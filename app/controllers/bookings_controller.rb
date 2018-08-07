class BookingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @sitter = Sitter.find(params[:sitter_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @sitter = Sitter.find params[:sitter_id]
    @user = User.find_by(email: params[:booking][:email])

    @booking = Booking.new(booking_params)
    @booking.status = 'Pending'

    if @booking.save
      redirect_to new_sitter_booking_booking_date_path(@sitter.id, @booking.id), notice: 'The booking request has been sent to the sitter'
    else
      render :new
    end
  end

  def index   #sitter_index?
    #GET sitter_booking route

    if current_sitter 
      @sitter = Sitter.find(params[:sitter_id])
      @bookings = Booking.where(sitter_id: @sitter.id).order(updated_at: :desc)
      if current_sitter != @sitter
        redirect_to sitters_path
      end
    else
      redirect_to sitters_path
    end 

  end

  def accept
    @booking = Booking.find_by(id: params[:booking_id])
    @booking.update!(:status => 'Accepted')
    @booking_dates = BookingDate.where(booking_id: @booking.id)
    @booking_dates.each do |booking_date|
      if Availability.find_by(avail_date: booking_date.date, sitter_id: @booking.sitter_id)
        Availability.find_by(avail_date: booking_date.date, sitter_id: @booking.sitter_id).destroy
      end
    end
    redirect_to sitter_path(@booking.sitter_id)
  end
  
  def reject
    @booking = Booking.find_by(id: params[:booking_id])
    @booking.update!(:status => 'Rejected')
    redirect_to sitter_bookings_path(@booking.sitter_id)
  end

  def complete
    @booking = Booking.find_by(id: params[:booking_id])
    @booking.update!(:status => 'Completed')
    redirect_to sitter_bookings_path(@booking.sitter_id)
  end

  def incomplete
    @booking = Booking.find_by(id: params[:booking_id])
    @booking.update!(:status => 'Incomplete')
    redirect_to sitter_bookings_path(@booking.sitter_id)
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    @owner = User.find_by(params[:user_id])
    @booking_dates = BookingDate.where(booking_id: @booking.id)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(
        :dog_name,
        :dog_breed, 
        :dog_size, 
        :dog_age, 
        :dog_gender, 
        :info,
        :dog_avatar
      ).merge(user_id:@user.id, sitter_id:@sitter.id)
    end

end
