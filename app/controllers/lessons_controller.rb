class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.all
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
    params.require(:lesson).permit(:name, :price, :description, :location)
  end
end
