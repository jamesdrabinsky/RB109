=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
=end

=begin
P:
  Input: array
  Output: array

  Explicit requirements:
    - Given an array
    - Return a new array where the first element of the argument array is at the end of the array.

A:
  - Get two slices to the array
     - The item at index 0 (in an array)
     - All items including and after index 1
  - Concatenate the two sub-arrays and return this new array
=end

def rotate_array(arr)
  first, rest = arr.partition.with_index { |_, i| i == 0 }
  rest + first
end

def rotate_array(arr)
  first, rest = arr[0..0], arr[1..]
  rest + first
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true