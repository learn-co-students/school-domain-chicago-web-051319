class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(names, grade)
    @roster.include?(grade) ? @roster[grade] << names : @roster[grade] = [names]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, student| @roster[grade] = student.sort }
  end
end
