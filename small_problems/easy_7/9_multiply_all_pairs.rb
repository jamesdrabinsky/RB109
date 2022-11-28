=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.
=end

=begin
P:
  Input: two arrays
  Output: array

  Explicit requirements:
     - Given two arrays
     - Returns an array that contains the product of multiplying every pair of numbers that can be formed between the two arrays

A:
  - Initialize an empty array
  - Iterate through each element in the first array
     - Iterate through each element in the second array
       - Multiply the item from the first array by the item from the second array and add the result to the new array
  - Return the new array
=end

def multiply_all_pairs(arr_1, arr_2)
  new_array = arr_1.each_with_object([]) do |item1, arr|
    arr_2.each do |item2|
      arr << item1 * item2
    end
  end
  new_array.sort
end

def multiply_all_pairs(arr_1, arr_2)
  arr_1.product(arr_2).map { |sub_arr| sub_arr.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]