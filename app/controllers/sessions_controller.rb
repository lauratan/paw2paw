class SessionsController < ApplicationController
	def new
		sessions = User.new
  end
  
  def create
    user = User.find_by_email(params[:email].downcase.strip)
    if user && user.authenticate_with_credentials(params[:email].downcase.strip, params[:password])
      session[:user_id] = user.id
      redirect_to sitters_path
    else
      redirect_to '/login/new'
    end
  end
	
	def destroy
    session[:user_id] = nil
    redirect_to '/', notice: 'Logged out!'
	end
	
end
