class LecturesController < ApplicationController
	before_action :set_course_for_lecture

	def index
		@lecture = @course.lectures
	end

	def show

		@lecture = @course.lectures.find(params[:id])
	end

	def new
		@lecture = Lecture.new
	end

	def create
    #binding.pry
    @lecture = @course.lectures.build(lecture_params)

    if @lecture.save
      redirect_to @course
    else
      render 'new'
    end
	end


	private

	def set_course_for_lecture
		@course = Course.find(params[:course_id])
	end

	def lecture_params
		params.require(:lecture).permit(:title,:content)
	end
end
