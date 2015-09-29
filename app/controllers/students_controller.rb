class StudentsController < ApplicationController

  def index
    page = (params[:page] || 0).to_i
    students = Student.limit(25).offset(page * 25)
    render locals: { students: students, page: page }
  end
end
