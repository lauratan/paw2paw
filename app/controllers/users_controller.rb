class UsersController < ApplicationController

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to sitters_path
    else
      render :new
    end
  end

  def bookings_index
    #GET user_booking route
    if current_user
      @user = User.find(params[:user_id])
      @bookings = Booking.where(user_id: current_user.id).order(created_at: :desc)
      if current_user != @user
        redirect_to sitters_path
      end
    else
      redirect_to sitters_path
    end 
  end

  def bookings_show
    @booking = Booking.find_by(id: params[:id])
    @sitter = Sitter.find_by(id: @booking.sitter_id)
    @sitter_user = User.find_by(id: @sitter.user_id)
    @owner = User.find_by(id: params[:user_id])
    @booking_dates = BookingDate.where(booking_id: @booking.id)
  end


  private
    def user_params
      params.require(:user).permit(
        :first_name, :last_name, :email, :password, :password_confirmation, :avatar
      )
    end
end
