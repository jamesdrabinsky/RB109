=begin
The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence
in an array of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] 
-- should be 6: [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and 
the maximum sum is the sum of the whole array.  If the array is made up
of only negative numbers, return 0 instead 

Empty array is considerd to have zero greatest sum.  Note that the emptry array is also a valid subarray.
=end

=begin
P:
  Input: array
  Output: integer

  Explicit requirements:
     - Given an array (empty or with integers)
     - Return the maximum sum of a contiguous (consecutive) subsequence
     - If all integers are negative, return 0

A:
  - Initialize a variable `sum` equal to 0
  - Iterate through a range from 0 to the array length (non-inclusive) |idx1|
    - Iterate through a range from idx1 to the array length (non-inclusive) |idx2|
      - If the sum of the sub-array from idx1 to idx2 (inclusive) is greater than `sum`
      then `sum` equals the sub-array's sum.
=end

def max_subsequence(arr)
  sum = 0
  
  (0...arr.size).each do |idx1|
    (idx1...arr.size).each do |idx2|
      current_sum = arr[idx1..idx2].sum
      sum = current_sum if current_sum > sum
    end
  end
  sum
end

p max_subsequence([]) == 0
p max_subsequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_subsequence([11]) == 11
p max_subsequence([-32]) == 0
p max_subsequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12