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
      redirect_to '/'
    else
      redirect_to '/users/new'
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
