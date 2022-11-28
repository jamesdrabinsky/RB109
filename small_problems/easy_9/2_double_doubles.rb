=begin
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
    - Given an integer
    - Return 2x the integer, unless t's a double number, which should be returned as is.

A:
  - First method: double_number?
     - Convert the number to a String
     - split the string at the midpoint

  - Second method: twice
     - If the number is a double number and the number has an even number of digits
       - return the number
     - Else return the number * 2
=end

def double_number?(number)
  num_arr = number.to_s.chars
  middle = num_arr.size / 2
  left, right = num_arr.partition.with_index { |_, i| i < middle }
  left == right
end

def twice(number)
  (double_number?(number)) ? number : number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10