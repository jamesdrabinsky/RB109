# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin
P:
  Input: array
  Output: integer or nil (if array length < 5)

  Requirements:
    - Given an array of integers
    - Return the minimum sum of 5 consecutive integers in the Array
    - If the array contains fewer than 5 elements, return nil

D: 
  Intermediate: array (sub-array)

A:
  - If the array size is less than 5, return nil
  - Initialize a variable `min` equal to the sum of all elements in the array
  - Iterate through a range from 0 to array length (non-inclusive) |idx1|
    - Iterate through a range from idx1 + 4 to array length (non-inclusive) |idx2|
      - Take a slice of the array from idx1 to idx2 (inclusive)
      - If the sum of the sub-array is less than `min` then max = the sum of the sub-array
  - Return max

=end

def minimum_sum(arr)
  return nil if arr.size < 5

  n = arr.size - 4
  n.times.map { |idx| arr[idx..idx + 4].sum }.min
end

def minimum_sum(arr)
  return nil if arr.size < 5

  mins = (0...(arr.size - 5)).map do |idx|
    arr[idx..idx + 4].sum
  end
  mins.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10