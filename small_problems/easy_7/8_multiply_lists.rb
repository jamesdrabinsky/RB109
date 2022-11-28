=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.
=end

=begin
P:
  Input: two arrays
  Output: array

  Explicit requirements:
     - Given two arrays
     - Returns an array that contains the product of multiplying the numbers from each list that have the same index

A:
  - Initialize an empty array
  - Iterate through a range from 0 to the length of the first array (non-inclusive)
     - Multiply the integers form arr_1 and arr_2 at the current index
     - Push each return value to the new array
  - Return the new array
=end

def multiply_list(arr_1, arr_2)
  (0...arr_1.size).map do |idx|
    arr_1[idx] * arr_2[idx]
  end
end

def multiply_list(arr_1, arr_2)
  (arr_1.zip(arr_2)).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]