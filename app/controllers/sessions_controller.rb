class SessionsController < ApplicationController
	def new
		sessions = User.new
  end
  
  def create
    user = User.find_by_email(params[:session][:email].downcase.strip)
    if user && user.authenticate_with_credentials(params[:session][:email].downcase.strip, params[:session][:password])
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
