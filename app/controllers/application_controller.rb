class ApplicationController < ActionController::Base
  def index
    render 'application/calendar'
  end

end
