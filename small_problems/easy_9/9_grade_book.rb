=begin
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.
=end

=begin
P:
  Input: three numbers
  Output: String

  Explicit requirements:
    - Given three numbers
    - Return a letter value associated with that grade

90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60  'F'

A:
  - Calculate the average of the three grades
  - Get the letter value according to the grade table
=end

def get_grade(*grades)
  case grades.sum / 3
  when 90..100 then "A"
  when 80..90 then "B"
  when 70..80 then "C"
  when 60..70 then "D"
  else             "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"