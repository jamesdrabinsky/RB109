=begin
You're working in a number zoo, and it seems that one of the numbers has gone missing!

Zoo workers have no idea what number is missing, and are too incompetent to figure it out, so they're hiring you to do it for them.

In case the zoo loses another number, they want your program to work regardless of how many numbers there are in total.
=end

=begin
P:
  Input: Array
  Output: integer

  Requirements:
    - Given an array of integers that is missing a number
    - Return the missing number 
    - Method should work regardless of the number of integers in the array

A:
  - Initialize a range that starts at 1 and goes to the size of the array + 1 (inclusive)
  - Substract the sum of the range from the sum of the array argument and return the result.
=end

def find_missing_number(arr)
  real_range = (1..arr.size + 1)
  real_range.sum - arr.sum
end

p find_missing_number([2, 3, 4]) == 1
p find_missing_number([1, 3, 4]) == 2
p find_missing_number([1, 2, 4]) == 3
p find_missing_number([1, 2, 3]) == 4