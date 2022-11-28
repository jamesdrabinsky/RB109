=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.
=end

=begin
P:
  Input: integer
  Output: string

  Explicit requirements:
     - Given an integer
     - Return a string of that integer
     - Cannot use #to_s

D:
  Input: Integer
  Intermediate: empty array
  Output: string

A:
=end

def signed_integer_to_string(number)
  arr = []
  
  if number > 0 
    symbol = '+'
  elsif number < 0
    symbol = '-'
  else
    symbol = ''
  end
  
  positive_number = number.negative? ? number * -1 : number

  loop do
    positive_number, res = positive_number.divmod(10)
    arr << res
    break if positive_number == 0
  end
  symbol + arr.reverse.join
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'