=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
=end

=begin
P:
  Input: array
  Output: two array

  Explicit requirements:
    - Given an array
    - Return two arrays (as nested arrays) that contain the first half and second half of the original array
    - If the middle array contains an od number of elements, the middle element should be placed in the first half array

A:
  - Initialize a variable `middle` which will be equal to array_size / 2
  - Partition the array 
    - For even length array, the first array will be < middle
    - For odd length arrays, the first arrauy will be <= middle
=end

def halvsies(arr)
  if arr.size.odd?
    arr.partition.with_index { |_, i| i <= arr.size / 2 }
  else
    arr.partition.with_index { |_, i| i < arr.size / 2 }
  end
end

def halvsies(arr)
  middle = (arr.size / 2.0).ceil
  arr.partition.with_index { |_, i| i < middle }
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]