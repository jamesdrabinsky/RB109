=begin
Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.
=end

=begin
P:
  Input: array and integer
  Output: array of integers

  Requirements:
     - Given a list of integers and a single sum value
     - Return the first two values in order of appearance that add up to form the sum

D:
  Intermediate: sub-arrays

A:
  - Iterate through a range from 0 to the array size (non-inclusive) |idx1|
    - Iterate through a range from idx1 + 1 to the array size (non-inclusive) |idx2|
       - if arr[idx1] + arr[idx2] is equal to the sum value then return the values at those two indices
  - If no pair returned true then return nil
  - If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.
=end

# def sum_pairs(arr, target)
#   indexes = []

#   (0...arr.size).each do |idx1|
#     (idx1 + 1...arr.size).each do |idx2|
#       values = arr.values_at(idx1, idx2)
#       indexes << [idx1, idx2] if values.sum == target
#     end
#   end

#   first_pair = indexes.min_by(&:last)
#   indexes.empty? ? nil : arr.values_at(*first_pair)
# end

# def sum_pairs(arr, target)
#   indexes = []

#   arr.each_with_index do |num, idx|
#     complement = target - num
#     if arr.include?(complement) && arr[idx] != complement
#       indexes << [idx, arr.index(complement)] unless indexes.include?([idx, arr.index(complement)].sort)
#     end
#   end

#   indexes
#   indexes.empty? ? nil : arr.values_at(*indexes[0])
# end

############################

l1 = [1, 4, 8, 7, 3, 15]
l2 = [1, -2, 3, 0, -6, 1]
l3 = [20, -13, 40]
l4 = [1, 2, 3, 4, 1, 0]
l5 = [10, 5, 2, 3, 7, 5]
l6 = [4, -2, 3, 3, 4]
l7 = [0, 2, 0]
l8 = [5, 9, 13, -3]

# p sum_pairs(l1, 8) == [1, 7]
# p sum_pairs(l2, -6) == [0, -6]
# p sum_pairs(l3, -7) == nil
# p sum_pairs(l4, 2) == [1, 1]
# p sum_pairs(l5, 10) == [3, 7]
# p sum_pairs(l6, 8) == [4, 4]
# p sum_pairs(l7, 0) == [0, 0]
# p sum_pairs(l8, 10) == [13, -3]

def sum_pairs(arr, target)
  seen = Set.new()

  arr.each do |num|
    complement = target - num
    return [complement, num] if seen.include?(complement)
    seen << num
  end
  nil
end

l1 = [1, 4, 8, 7, 3, 15]
p sum_pairs(l1, 8) #== [1, 7]


