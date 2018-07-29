class SittersController < ApplicationController
  
  def index
    @sitters = Sitter.all.order(created_at: :desc)
  end

  def show
    avails = Availability.where(sitter_id: 1)
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date)
    end
    @sitter = Sitter.find params[:id]
  end

  def new
    @sitter = Sitter.new
  end

  def create
    @product = Sitter.new(sitter_params)

    if @sitter.save
      redirect_to [:sitters], notice: 'New sitter created!'
    else
      render :new
    end
  end

  private

  def sitter_params
    params.require(:sitter).permit(
      :name,
      :address,
      :summary,
      :rules,
      :price,
      :latitude,
      :longitude,
      :user_id
    )
  end

end
