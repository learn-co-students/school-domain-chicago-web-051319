class School
  attr_reader :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

# getter/attr_reader for roster
#   def roster
#     @roster
#   end

  def add_student(name, grade)
    # if !roster[grade]
    if roster[grade].nil?
     roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(searched_grade)
    roster[searched_grade]
  end

  def sort
    output_hash = {}
    sorted_roster = roster.sort.to_h
    sorted_roster.each do |grade, name_array|
        sorted_name_array = name_array.sort
        output_hash[grade] = sorted_name_array
    end
    output_hash
  end


end
