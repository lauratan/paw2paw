class SittersController < ApplicationController
  # I want to be able to use the user table's info to get the avatar
  # @users = User.all.order(created_at: :desc)
  
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
    @user = current_user
  end

  def create
    @sitter = Sitter.new(sitter_params)
    @sitter.user_id = @user.id
    #to add img field for house pics
    
    if @sitter.save
      redirect_to sitter_path(@sitter.id), notice: 'New sitter created!'
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
    )
  end

end
