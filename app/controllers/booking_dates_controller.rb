class BookingDatesController < ApplicationController
  skip_before_action :verify_authenticity_token
    
  def new
    avails = Availability.where(sitter_id: params[:sitter_id])
    @sitter_id = params[:sitter_id]
    @booking_id = params[:booking_id]
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date).sort!
    end
  end

  def create
    @alldates = Array.new

    params[:dates].each do |date|
      puts date
      @user_id = params[:user_id]
      @alldates.push(date)
    end


    @alldates.each do |date|
        @booking_date = BookingDate.new({
          booking_id: params[:booking_id].to_i ,
          date: date
        })
        @booking_date.save!

        
      end
  end 

end
