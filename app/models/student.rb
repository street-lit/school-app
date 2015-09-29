class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :course
  belongs_to :teacher
  validates_presence_of :f_name, :l_name
  validates_inclusion_of :currently_enrolled, :in => [true, false]

  def full_name
    "#{f_name} #{l_name}"
  end
end
