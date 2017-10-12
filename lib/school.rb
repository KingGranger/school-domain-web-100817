class School
  attr_accessor :roster
  def initialize model
    @model = model
    @roster = {}
  end

  def add_student student, grade
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade student_grade
    @roster[student_grade]
  end

  def sort
    @roster.each_value(&:sort!)
  end
end
