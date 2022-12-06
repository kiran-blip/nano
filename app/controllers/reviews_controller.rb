class ReviewsController < ApplicationController
  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)
    @review.activity = @activity
    if @review.save
      redirect_to activity_path(@activity)
    else
      render "activities/show"
    end
    authorize @review
  end

  # def average_rating(review_model)
  #   # Compute the average rating of the review model by calling the `rating` method on each review and taking the average
  #   avg_rating = review_model.reviews.average { |review| review.rating }
  #   # Return the average rating
  #   avg_rating
  # end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :title)
  end
end
