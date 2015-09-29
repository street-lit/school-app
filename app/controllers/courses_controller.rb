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

  def new
    render locals: {
      course: get_course
    }
  end

  def edit
    render locals: {
      course: Course.find(params[:id])
    }
  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def get_course
    Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:course_name, :subject)
  end
end












