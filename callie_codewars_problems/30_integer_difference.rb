=begin
Write a function that accepts two arguments: an array/list of integers and another integer (n).

Determine the number of times where two integers in the array have a difference of n.

For example:

[1, 1, 5, 6, 9, 16, 27], n=4  -->  3  # (1,5), (1,5), (5,9)
[1, 1, 3, 3], n=2             -->  4  # (1,3), (1,3), (1,3), (1,3)
=end

=begin
P:
  Intput: array, integer
  Output: integer

  Requirements:
    - Given an array of integers and a target integer
    - Return the number of times two integers have a difference of the target

E:
  [1, 1, 5, 6, 9, 16, 27], 4) == 3

A:
  - Initialize a variable `count` to 0
  -  Iterate through a range from 0 to the array length (non-inclusive) |idx1|
    - Itetare through a range from idx + 1 to the array length (non-inclusive) |idx2|
       - If the numbers at idx2 and idx1 have a difference of the target integer, increment `count` by 1
  - Return `count`
=end

def int_diff(arr, target)
  count = 0

  arr.each_index do |idx1|
    (idx1 + 1...arr.size).each do |idx2|
      count += 1 if (arr[idx1] - arr[idx2]).abs == target
    end
  end
  count
end

def int_diff(arr, target)
  arr.combination(2).count { |sub_arr| sub_arr.reduce(:-).abs == target }
                           #  { |a, b| (a - b).abs == target }
end


p int_diff([1, 1, 5, 6, 9, 16, 27], 4) == 3
p int_diff([1, 1, 3, 3], 2) == 4