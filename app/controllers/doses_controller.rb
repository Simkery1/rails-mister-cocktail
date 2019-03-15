class DosesController < ApplicationController
  def create
    @cocktail = cocktail.find(params[:cocktail_id])
    @dose = Review.new(review_params)
    @dose.cocktail = @cocktail
  end

  def new
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
