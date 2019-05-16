# code here!
class School
    attr_accessor :roster
    attr_reader :school_name
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name,grade_num)
        if !@roster.include?(grade_num)
            @roster[grade_num]= []
        end
        @roster[grade_num] << student_name
    end

    def grade(grade_num)
       return @roster[grade_num] 
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
            p @roster[grade]
        end
    end
end
