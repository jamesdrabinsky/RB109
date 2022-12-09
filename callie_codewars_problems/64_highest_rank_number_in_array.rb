=begin
Complete the method which returns the number which is most frequent in the given input array. If there is a tie for most frequent number, return the largest number among them.

Note: no empty arrays will be given.

Examples
[12, 10, 8, 12, 7, 6, 4, 10, 12]              -->  12
[12, 10, 8, 12, 7, 6, 4, 10, 12, 10]          -->  12
[12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]  -->   3
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
    - Given an array of integers
    - Return the most frequent number
    - If there are multiple most frequent numbers, return the largest among them

A:
  - Initialize a variable `groups` equal to a hash with a default array value
  - Iterate through the unique elements in the array argument
    - Add each element to the array of the key corresponding to its count in the array
  - Sort the array keys and values and return the first value of the first key.
=end

def highest_rank(arr)
  groups = Hash.new { |h, k| h[k] = [] }

  arr.uniq.each do |num|
    groups[arr.count(num)] << num
  end

  groups.max[1].max
end

def highest_rank(arr)
  arr.uniq.group_by { |num| arr.count(num) }.max[1].max
end

def highest_rank(arr)
  arr.max_by { |n| [arr.count(n), n] }#.last
end

def highest_rank(arr)
  arr.group_by(&:itself).max_by { |k, v| [v.size, k] } #[0]
end

p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) #= 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) == 3