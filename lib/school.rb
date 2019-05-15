# code here!
class School

  def initialize(school_name)
    @school_name=school_name
    @roster={}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    @name=name
    @grade=grade
    if !(@roster.key?(grade))
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
    @roster
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end
  def sort
    @roster=@roster.sort.to_h
    @roster.each do |key,value|
      @roster[key]=value.sort
    end

  end
end
