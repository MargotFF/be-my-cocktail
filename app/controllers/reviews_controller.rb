class ReviewsController < ApplicationController

  # def new
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @review = Review.new
  # end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save
    redirect_to cocktail_path(@cocktail, anchor: "review-#{@review.id}")
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to cocktail_path(@review.cocktail)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
