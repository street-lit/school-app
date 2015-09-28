class Course < ActiveRecord::Base
  has_many :students
  has_many :teachers
  belongs_to :school
  validates_presence_of :course_name, :subject
end
