class SittersController < ApplicationController
  
  def index
    @sitters = Sitter.all.order(created_at: :desc)
    
  end

  def show
    @user = current_sitter
    avails = Availability.where(sitter_id: params[:id])
    @dates = Array.new
    avails.each do |date|
      @dates.push(date.avail_date).sort!
    end
    @sitter = Sitter.find params[:id]
    @photos = @sitter.photos
  end

  def new
    @sitter = Sitter.new
    @user = current_user
    if current_sitter 
      redirect_to sitter_path(current_sitter.id) 
    end 
  end

  def create
    @user = current_user
    @sitter = Sitter.new(sitter_params)
    @sitter.user_id = @user.id
    
    if @sitter.save
      redirect_to sitter_path(@sitter.id), notice: 'New sitter created!'
    else
      render :new
    end
  end

  def edit 
    @user = current_user
    if current_sitter 
      @sitter = Sitter.find(params[:id])
    end
  end

  def update
    @sitter = Sitter.find(params[:id])
    if @sitter.update(sitter_params)
      redirect_to @sitter
    else
      render :edit
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
      {photos: []}
    )
  end

end
