class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @lesson = Lesson.find(params[:lesson_id])

    @booking.lesson = @lesson
  end

  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @lesson = Lesson.find(params[:lesson_id])
    @booking.lesson = @lesson
    @booking.student = current_user

    if @booking.save
      redirect_to lesson_booking_path(@lesson, @booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to cocktail_path(@booking.lesson)
  end

  private

  def booking_params
    params.require(:booking).permit(:lesson_id, :date, :id)
  end
end
