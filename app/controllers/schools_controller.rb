class SchoolsController < ApplicationController
  def index
    page = (params[:page] || 0).to_i
    schools = School.limit(25).offset(page * 25)
    render locals: { schools: schools, page: page}
  end

  def show
    render locals: {
      school: School.find(params[:id])
    }
  end
end
