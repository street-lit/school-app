# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
course = {calculus: "math", game_theory: "economics", arificial_intelligence: "computer_science", critical_theory: "english"}
enrolled = [true, true, true, true, true, true, true, true, false]

3.times do
  school = School.create({
    school_name: Faker::University.name
    })
  course.each do |k, v|
    courses = Course.create({
      course_name: k,
      subject: v,
      school_id: school.id
      })
    teacher = Teacher.create({
      f_name: Faker::Name.first_name,
      l_name: Faker::Name.last_name,
      course_id: courses.id,
      school_id: school.id
      })
    25.times do
      Student.create({
        f_name: Faker::Name.first_name,
        l_name: Faker::Name.last_name,
        currently_enrolled: enrolled.sample,
        course_id: courses.id,
        school_id: school.id,
        teacher_id: teacher.id
        })
    end
  end
end
