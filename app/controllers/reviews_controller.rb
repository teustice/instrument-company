class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
    @review = Review.new
  end

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

  def edit
    @review = Review.find(params[:id])
    render :edit
  end

  def update
    @review= Review.find(params[:id])
    if @review.update(review_params)
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    flash[:alert] = "Review has been deleted"
    @review.destroy
    redirect_to reviews_path
  end

private
  def review_params
    params.require(:review).permit(:title, :content, :rating, :instrument_id)
  end
end
