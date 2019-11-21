class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @lessons = Lesson.where(sql_query, query: "%#{params[:query]}%")
    else
      @lessons = Lesson.geocoded

      @markers = @lessons.map do |lesson|
        {
          lat: lesson.latitude,
          lng: lesson.longitude
        }
      end
    end
  end

  def show
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
