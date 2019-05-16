require 'pry'

class School
    attr_accessor :add_student
    # attr_reader :school, :roster
    attr_accessor :roster, :school


    def initialize(school)
    @school=school
    @roster={}
    end


    def add_student(student, grade)
        @student=student
        @grade=grade



        if roster.key?(grade)
            roster[grade]<<student
        else
            roster[grade]=[]
            roster[grade]<<student
        end

    end

    def grade(grade)
        return roster[grade]
    end

# binding.pry


    def sort
        @roster.each { |grade, students|
            @roster[grade] = students.sort
        }
        # binding.pry
    end

end
