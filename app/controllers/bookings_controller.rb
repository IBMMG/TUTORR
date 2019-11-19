class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @lesson = Lesson.find(params[:lesson_id])
    @booking.lesson = @lesson
    if @booking.save
      redirect_to lesson_path(@lesson)
    else
      render 'lessons/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to cocktail_path(@booking.lesson)
  end

  private

  def booking_params
    params.require(:booking).permit(:lesson_id, :date)
  end



end
