class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @review = Review.new
    @instrument = Instrument.find(params['instrument_id'])
    render :new
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.instrument_id = params['instrument_id']
    @review.author = current_user.email
    if @review.save
      flash[:notice] = "Review successfully added!"
      redirect_to  instrument_path(params['instrument_id'])
    else
      render :new
    end
  end

private
  def review_params
    params.require(:review).permit(:title, :content, :rating, :instrument_id)
  end
end
