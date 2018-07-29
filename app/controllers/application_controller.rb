class ApplicationController < ActionController::Base
	def index
		render 'application/index'
	end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
	
	def authorize
		redirect_to '/login/new' unless current_user
	end

end
