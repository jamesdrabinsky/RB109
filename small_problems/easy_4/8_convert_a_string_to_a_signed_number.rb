=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.
=end

=begin
P:
  Input: string
  Output: integer

  Explicit requirements:
    - Given a string
    - Return an integer
    - If the string has a leading + then the return value should be positive
    - If the string has a leading - then the return value should be negative
    - Cannot use #string.to_i

D:
  Input: integer
  Output integer

A:
  - create hash matching string nums to integer nums
  - set number to 0
  - Reverse the string argument
  - Iterate through the string stripped of its leading character and reversed
    - Fetch each number from the hash by using its corresponding string number
    - Multiply each  by 10 ** corresponding index position
    - If the string has a leading +
      - Add each returned value to number
    - Else subtract each returned value from number
  - Return number

=end

HASH = ('0'..'9').zip(0..9).to_h

def string_to_signed_integer(string_num)
  number = 0

  iter_string = string_num.gsub(/[^0-9]/, '').reverse.chars
  iter_string.each_with_index do |num, i|
    if string_num.start_with?("-")
      number -= HASH[num] * (10 ** i)
    else
      number += HASH[num] * (10 ** i)
    end
  end
  number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100