=begin
The objective is to return all pairs of integers from a given array of integers that have a difference of 2.

The result array should be sorted in ascending order of values.

Assume there are no duplicate integers in the array. The order of the integers in the input array should not matter.

Examples
[1, 2, 3, 4]  should return [[1, 3], [2, 4]]

[4, 1, 2, 3]  should also return [[1, 3], [2, 4]]

[1, 23, 3, 4, 7] should return [[1, 3]]

[4, 3, 1, 5, 6] should return [[1, 3], [3, 5], [4, 6]]
=end

=begin

=end

def twos_difference(arr)
  # arr.combination(2).select { |sub_arr| sub_arr.reduce(:-).abs == 2 }.map(&:sort).sort
  arr.combination(2).select { |a, b| (a - b).abs == 2 }.map(&:sort).sort
end

def twos_difference(lst)
  lst.sort.combination(2).select { |a, b| b - a == 2 }
end


p twos_difference([1, 2, 3, 4]) == [[1, 3], [2, 4]]
p twos_difference([1, 3, 4, 6]) == [[1, 3], [4, 6]]
p twos_difference([0, 3, 1, 4]) == [[1, 3]]
p twos_difference([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p twos_difference([6, 3, 4, 1, 5]) == [[1, 3], [3, 5], [4, 6]]
p twos_difference([3, 1, 6, 4]) == [[1, 3], [4, 6]]
p twos_difference([1, 3, 5, 6, 8, 10, 15, 32, 12, 14, 56]) == [[1, 3], [3, 5], [6, 8], [8, 10], [10, 12], [12, 14]]
p twos_difference([1, 4, 7, 10]) == []
p twos_difference([]) == []