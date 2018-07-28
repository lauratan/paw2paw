class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def index
    puts "db query"
    puts Availability.all
    puts "db query"
    render 'application/avail'
  end

  def turtle
    params[:dates].each do |date|
        Availability.create!({date: date, sitter_id: current_id})
    end
  end

end
