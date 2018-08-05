class PhotosController < ApplicationController
  
  def new
    @sitter = Sitter.find_by(id: params[:sitter_id])
  end

  def create
    @sitter = @sitter = Sitter.find_by(id: params[:sitter_id])
    @photo = Photo.new(photo_params)
    @photo.sitter_id = @sitter.id
    @photo.save
        
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_url)
  end

end
