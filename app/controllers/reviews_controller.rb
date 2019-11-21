class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @lesson = Lesson.find(params[:lesson_id])
    @review = review.find(params[:id])
    @review.lesson = @review
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking

    if @review.save!
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :name, :stars, :lesson_id)
  end
end
