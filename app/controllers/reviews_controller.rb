class ReviewsController < ApplicationController

  def create
    @sitter = Sitter.find_by(id: params[:sitter_id])
    @review = @sitter.reviews.create(review_params)

    if @review.save
      redirect_to sitter_path(@sitter.id)
    else 
      redirect_to sitter_path(@sitter.id)
    end
  end  

  def destroy
    @delete = Review.find(params[:id]).destroy
    redirect_to sitter_path(params[:sitter_id])
  end

  private
  def review_params
    params.require(:review).permit(:rating, :content).merge(user: current_user)
  end
end
