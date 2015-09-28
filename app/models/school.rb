class School < ActiveRecord::Base
  has_many :courses
  has_many :students
  has_many :teachers
  validates_presence_of :school_name
end
