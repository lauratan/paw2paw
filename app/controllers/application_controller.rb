class ApplicationController < ActionController::Base
  def index
    avails = Availability.where(sitter_id: 1)
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date)
    end
    render 'application/avail'
  end

  def turtle
    params[:dates].each do |date|
        Availability.create!({date: date, sitter_id: current_id})
    end
  end

end
