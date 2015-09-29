class TeachersController < ApplicationController

  def index
    page = (params[:page] || 0).to_i
    teachers = Teacher.limit(25).offset(page * 25)
    render locals: { teachers: teachers, page: page }
  end

  def show
    render locals: {
      teacher: Teacher.find(params[:id])
    }
  end
end
