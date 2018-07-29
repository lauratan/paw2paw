class SittersController < ApplicationController
  
  def index
    @sitters = Sitter.all.order(created_at: :desc)
    @sitter = @sitters.first
  end

  def show
    @sitter = Sitter.find params[:id]
  end
end
