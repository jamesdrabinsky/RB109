=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.
=end

=begin
P:
  Input: two Arrays
  Output: array

  Explicit requirements:
     - Given two arrays
     - Return a new array that contains all elements from both array arguments, with the elements taken in alteration

A:
   - Initialize an emptry array
   - Iterate through a range from 0 to the length of arr_1 (non-inclusive)
    - Add elements from both arrays at the current index to the empty array
  - Return the populate array
=end

def interleave(arr_1, arr_2)
  (0...arr_1.size).each_with_object([]) do |idx, arr|
    arr << arr_1[idx] << arr_2[idx]
  end
end

def interleave(arr_1, arr_2)
  (0...arr_1.size).flat_map do |idx|
    [arr_1[idx], arr_2[idx]]
  end
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
