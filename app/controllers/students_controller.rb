class StudentsController < ApplicationController

  def index
    # page = (params[:page] || 0).to_i
    students = Student.order(:l_name).page(params[:page])
    render locals: { students: students }
  end
end
