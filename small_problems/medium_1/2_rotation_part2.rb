=begin
Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.
You may use the rotate_array method from the previous exercise if you want. (Recommended!)
You may assume that n is always a positive integer.
=end

=begin
P:
  Input: two integers
  Output: integer

  Explicit requirements:
    - Given an integer
    - Return a new integer where the last n digits of the integer are rotated

A:
  - Convert the integer to a string
  - target is equal to the string length - n
  - Get three slices to the array
     - The item at index -n index
     - All items up to -n (non-inclusive)
     - All items after -n (-n + 1)
  - Concatenate the three sub-arrays and return this new array
=end

def rotate_rightmost_digits(number, n)
  str = number.to_s
  target = str.size - n
  first, last, middle = str[0...target], str[target], str[target + 1..]
  (first + middle + last).to_i
end

def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars
  target = arr.size - n
  first, last = arr.partition.with_index { |_, i| i == target }
  (last + first).join.to_i
end

def rotate_array(arr, n)
  first, rest = arr.partition.with_index { |_, i| i == n }
  rest + first
end

def rotate_rightmost_digits(number, n)
  arr = number.to_s.chars
  target = arr.size - n
  rotated = rotate_array(arr, target)
  rotated.join.to_i
end

def rotate_array(arr)
  first, rest = arr.partition.with_index { |_, i| i == 0 }
  rest + first
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917