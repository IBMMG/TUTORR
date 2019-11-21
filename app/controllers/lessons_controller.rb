class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @lessons = Lesson.where(sql_query, query: "%#{params[:query]}%")
    else
      @lessons = Lesson.all
    end
  end

  # if params[:query].present?
  #     sql_query = " \
  #       lessons.title @@ :query \
  #       OR lessons.syllabus @@ :query \
  #       OR description.first_name @@ :query \
  #       OR directors.last_name @@ :query \
  #     "
  #     @lessons = Lesson.joins(:description).where(sql_query, query: "%#{params[:query]}%")

  def show
    @review = Review.new
    @booking = Booking.where(lesson: @lesson, student: current_user).last
  end

  def create
    @lesson = Lesson.new(lesson_params)
      if @lesson.save
        redirect_to lesson_path(@lesson)
      else
        render 'lessons/new'
      end
  end

  def new
    @lesson = Lesson.new
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:name, :price, :description, :location, :photo)
  end
end
