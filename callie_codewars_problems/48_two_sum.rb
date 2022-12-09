=begin
Write a function that takes an array of numbers (integers for the tests) and a target number. It should find two different items in the array that, when added together, give the target value. The indices of these items should then be returned in a tuple / list (depending on your language) like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all of the items will be numbers; target will always be the sum of two different items from that array).

Based on: http://oj.leetcode.com/problems/two-sum/

two_sum([1, 2, 3], 4) == {0, 2}
=end

def two_sum(arr, target)
  arr.each_index do |idx1|
    (idx1 + 1...arr.size).each do |idx2|
      return [idx1, idx2] if arr[idx1] + arr[idx2] == target
    end
  end
end

p two_sum([1, 2, 3], 4).sort == [0, 2]
p two_sum([1234, 5678, 9012], 14690).sort == [1, 2]
p two_sum([2, 2, 3], 4).sort == [0, 1]