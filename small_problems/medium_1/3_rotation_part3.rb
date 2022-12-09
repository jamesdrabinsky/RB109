=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
    - Given an integer
    - Return the maximum rotation of the argument

A:
  - Convert the number into an array
  - Iterate through a range from the string length down to 1
    - Reassign the array to the result of invoking `rotate_rightmost_digits`
    and passing in the array and the current number in the range
  - After iteration is complete, join the array into a string and convert it to a number
=end

def rotate_array(arr)
  first, rest = arr.partition.with_index { |_, i| i == 0 }
  rest + first
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  str = number.to_s
  (str.size).downto(1).each do |num|
    number = rotate_rightmost_digits(number, num)
  end
  number
end


def max_rotation(int)
  arr = int.to_s.split('')
  (arr.size - 1).times do |idx|
    first, last = arr.partition.with_index { |_, v| v == idx }
    arr = last + first
  end
  arr.join.to_i
end

def max_rotation(int)
  arr = int.to_s.chars
  (0...arr.size).each do |idx|
    first, target, last = arr[0...idx], [arr[idx]], arr[idx + 1..]
    arr = first + last + target
  end
  arr.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845