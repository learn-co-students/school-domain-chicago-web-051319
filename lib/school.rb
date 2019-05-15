# code here!
class School
  
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
    
  def add_student(names , grade_num)
    if !@roster.include?(grade_num)
      @roster[grade_num] = []
    end
    
    @roster[grade_num] << names
  end
  
  def grade(grade_num)
    return @roster[grade_num]
  end
  
  def sort
    puts @roster
    @roster.each do |grade , students|
      @roster[grade] = @roster[grade].sort
    end
  end
end