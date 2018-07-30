class SittersController < ApplicationController
  
  def index
    @sitters = Sitter.all.order(created_at: :desc)
  end

  def show
    @sitter = Sitter.find params[:id]
  end

  def new
    @sitter = Sitter.new
    @user = User.all.first
  end

  def create
    @user = current_user
    @sitter = Sitter.new(sitter_params)
    @sitter.user_id = @user.id
    #to add img field for house pics
    
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
    )
  end

end
