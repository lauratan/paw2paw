class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def index
    render 'application/calendar'
  end

  def turtle
    params[:dates].each do |turtle|
        Availabiliy.create!({date: turtle, sitter_id: current_id})
    end
  end

end
