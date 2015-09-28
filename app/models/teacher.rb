class Teacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :school
  has_many :students
end
