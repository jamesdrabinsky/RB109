=begin
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
     - Given a number
     - Return that number with its digits reversed

A:

=end

def reversed_number(number)
  number.digits.join.to_i
end

def reversed_number(number)
  digits = []
  number.to_s.each_char do |char|
    digits.unshift(char)
  end
  digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1