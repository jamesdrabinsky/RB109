=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
=end

=begin
P:
  Input: string
  Output: integer

  Explicit requirements:
    - Given a string
    - Return an integer
    - Cannot use #string.to_i

D:
  Input: integer
  Output integer

A:
  - create hash matching string nums to integer nums
  - set number to 0
  - Reverse the string argument
  - Iterate through the reversed string
    - Fetch each number from the hash by using its corresponding string number
    - Multiply each  by 10 ** corresponding index position
    - Add each returned value to number
  - Return number

=end

HASH = ("0".."9").zip(0..9).to_h

def string_to_integer(string_num)
  number = 0
  string_num.reverse.chars.each_with_index do |num, i|
    number += HASH[num] * (10 ** i)
  end
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570