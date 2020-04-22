# frozen_string_literal: true

class School
  def initialize
    @list = {}
  end

  def add(student, grade)
    @list[grade] ? @list[grade] << student : @list[grade] = [student]
  end

  def students(grade)
    return [] if @list[grade].nil?

    @list[grade].sort
  end

  def students_by_grade
    @list.map { |grade| { grade: grade[0], students: grade[1].sort } }
         .sort { |x, y| x[:grade] <=> y[:grade] }
  end
end
