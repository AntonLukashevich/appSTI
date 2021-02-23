class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]
  #after_action :add_course_author_to_authors_table, only: :create

  def index
    #binding.pry
    @courses  = Course.all
    #binding.pry
  end

  def new
    @course = Course.new
    #@course.build_course_author
    #binding.pry
  end

  def show
  end

  def edit
  end

  def create
    #@user = User.find_by(params[:user_id])
    #binding.pry
    @course = Course.create(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private

  def course_params
	params.require(:course).permit(:title, :description)
  end

  def set_course
    @course= Course.find(params[:id])
  end
end
