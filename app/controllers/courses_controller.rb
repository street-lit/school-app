class CoursesController < ApplicationController

  def index
    page = (params[:page] || 0).to_i
    courses = Course.limit(25).offset(page * 25)
    render locals: { courses: courses, page: page }
  end

  def show
    render locals: {
      course: get_course
    }
  end

  private

  def get_course
    Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:course_name, :subject)
  end
end












