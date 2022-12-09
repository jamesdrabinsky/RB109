=begin
Complete the function that
accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

Examples
[1, 2, 3], [4, 5, 6] --> 9 because (9 + 9 + 9) / 3

[10, 20, 10, 2], [10, 25, 5, -2] --> 16.5 because (0 + 25 + 25 + 16) / 4

[-1, 0], [0, -1] --> 1 because (1 + 1) / 2
=end

=begin
P:
  Input: two arrays 
  Output: integer

  Requirements:
    - Given two arrays of equal length
    - 1. Get the difference between corresponding elements in both arrays
    - 2. Squares the absolute value difference between those values
    - 3. Returns the average of those squared ABSOLUTE VALUE differences

A:
  - Initialize a variable `diffs` to an emptry array
  - Zip the two arrays 
     - Get the absolute value difference between the elements of each sub-array and square it
  - Return the average of those diffs
=end

def solution(arr_1, arr_2)
  arr_1.zip(arr_2).map { |sub_arr| (sub_arr.reduce(:-) ** 2).abs }.sum.fdiv(arr_1.size)
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
