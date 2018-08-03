class UsersController < ApplicationController

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to sitters_path
    else
      redirect_to '/users/new'
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


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
        :first_name, :last_name, :email, :password, :password_confirmation, :avatar
      )
    end
end
