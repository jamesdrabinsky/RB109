=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.
=end

=begin
P:
  Input: array
  Output: integer

  Explicit requirements:
     - Given an array 
     - Return the sum of sums of each leading subsequence for that array

D:
  Input: array
  Intermediate: array
  Output: integer

A:
  - Initialize a variable `total` equal to 0
  - Iterate through a range from 0 to the array length (non-inclusive)
    - Take a slice of the array from 0 to the current number in the range
    and get the sum of these elements in that sub-array.  Add that sum to `total`
  - Once iteration is complete, return `total`
=end

def sum_of_sums(arr)
  (0...arr.size).reduce(0) do |total, idx|
    total += arr[0..idx].sum
  end
end

def sum_of_sums(arr)
  nested_arr = (0...arr.size).each_with_object([]) do |idx, sums_arr|
    sums_arr << arr[0..idx]
  end
  nested_arr.map { |sub_arr| sub_arr.reduce(:+) }.sum
end

p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35