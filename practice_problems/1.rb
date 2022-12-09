# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin
P:
  Input: array
  Output: array

  Requirements:
    - Given an array of integers
    - For each number in the array count how many numbers in the array are smaller
    - When counting numbers, only count unique numbers


A:
  - Initialize an empty array `res`
  - Initialize a variable `unique` which is contains the distinct elements of the argument array
  - Iterate through the array argument
    - For each element count how many items it is greater than in `uniques`
    - Add each count to `res`
  - Return `res`

=end

def smaller_numbers_than_current(arr)
  unique = arr.uniq

  arr.map do |num|
    unique.count { |u_num| num > u_num }
  end
end



p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]