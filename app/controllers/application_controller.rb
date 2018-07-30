class ApplicationController < ActionController::Base
	def index
		render 'application/index'
	end

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def current_sitter
		if current_user
			@current_sitter = Sitter.find_by(user_id: current_user.id)
		end
	end

	helper_method :current_user, :current_sitter
	
	def authorize
		redirect_to '/login/new' unless current_user
	end

end
