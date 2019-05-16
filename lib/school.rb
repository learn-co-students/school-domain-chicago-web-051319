require 'pry'

class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(students, grades)
      roster[grades] ||= []
      roster[grades] << students
    end

    def grade(grades)
      roster.detect do |num, name|
        if num == grades
          return name
        end
      end
    end


  def sort
    new_hash = {}
    roster.each do |num, name|
      new_hash[num] = name.sort
    end
    new_hash
  end
  # def add_student(name, grade)
  #   if @roster[grade]
  #   @roster[grade] << name
  # else
  #   @roster[grade]||= []
  #   end
  #   @roster[grade] = [name]
  # end

end
# school = School.new("Bayside High School")
# school.roaster





#add_student function
#
# # students.each do |student|
# #   if @roster[grade]
# #     @roster[grade] << student
# #   else
# #     @roster[grade] = [student]
# #   end
# # end
#
#  if @roster[grade]
#    roster[grade] << name
#  else
#    roster[grade] = []
#  end
#  @roster[grade] = name
#  @add_student = name
#  grade = [name]
# # binding.pry
