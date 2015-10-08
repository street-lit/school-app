class School < ActiveRecord::Base
  has_many :students
  has_many :teachers
  has_many :offerings
  has_many :courses, through: :offerings
  validates_presence_of :school_name
end
