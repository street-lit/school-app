class Course < ActiveRecord::Base
  has_many :students
  has_many :teachers
  has_many :offerings
  has_many :schools, through: :offerings
  belongs_to :school
  validates_presence_of :course_name, :subject

  def name
    course_name.sub(/_/, " ").capitalize
  end

  def subject_name
      subject.sub(/_/, " ").capitalize
  end
end
