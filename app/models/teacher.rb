class Teacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :school
  has_many :students
  validates_presence_of :f_name, :l_name

  def full_name
    "#{f_name} #{l_name}"
  end
end
