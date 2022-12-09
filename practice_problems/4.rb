
# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin
P:
  Input: array
  Output: array

  Requirements:
    - Given an array of integers
    - Return an array containing the two numbers that are closest together in value

D:
  Intermediate: sub-arrays

A:
  - Initialize a variable `diff` which is equal to the absolute value of substracting the max value from the min value of the array.
  - Initialize a variable `indexes` which is equal to `nil`

  - Iterate through a range from 0 to the array size (non-inclusive) |idx1|
    - Iterate through a range from idx1 + 1 to the array size (non-inclusive) |idx2|
       - initialize a variable `current_diff` which is equal to the absolute value of substracting the element at idx1 from the element at idx2
       - If `current_diff` is less than `diff`
         - Reassign `diff` to `current_diff`
         - Replace `indexes` with idx1 and idx2 in an array
  - Return the integers at the indexes in the `indexes` array (in an array)
=end

def closest_numbers(arr)
  diff = arr.minmax.reduce(:-).abs
  indexes = nil

  (0...arr.size).each do |idx1|
    (idx1 + 1...arr.size).each do |idx2|
      current_diff = (arr[idx1] - arr[idx2]).abs
      if current_diff < diff
        diff = current_diff
        indexes = [idx1, idx2]
      end
    end
  end
  arr.values_at(*indexes)
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]