=begin
In this Kata, your function receives an array of integers as input. Your task is to determine whether the numbers are in ascending order. An array is said to be in ascending order if there are no two adjacent integers where the left integer exceeds the right integer in value.

For the purposes of this Kata, you may assume that all inputs are valid, i.e. arrays containing only integers.

Note that an array of 0 or 1 integer(s) is automatically considered to be sorted in ascending order since all (zero) adjacent pairs of integers satisfy the condition that the left integer does not exceed the right integer in value.

For example:

is_asc_order([1,2,4,7,19]) # returns True
is_asc_order([1,2,3,4,5]); # returns True
is_asc_order([1,6,10,18,2,4,20]) # returns False
is_asc_order([9,8,7,6,5,4,3,2,1]) # returns False because the numbers are in DESCENDING order
=end

=begin
P:
  Input: array
  Output: boolean

  Requirements:
    - Given an array of integers
    - Return true if all numbers are in ASCENDING order
    - Otherwise, return false


A:
  - Iterate through a range from 0 to the array size - 1 (non-inclusive)
    - If the array number at the current index is greater than the number at the following index, return false
  - Return true
=end

def is_asc_order(arr)
  (0...arr.size - 1).each do |idx|
    return false if arr[idx] > arr[idx + 1]
  end
  true
end

def is_asc_order(arr)
  (0...arr.size - 1).all? do |idx|
    arr[idx] <= arr[idx + 1]
  end
end

def is_asc_order(arr)
  arr.each_cons(2).all?{ |x, y| x <= y }
end

def is_asc_order(arr)
  arr == arr.sort
end

p is_asc_order([1,2,4,7,19]) == true
p is_asc_order([1,2,3,4,5]) == true
p is_asc_order([1,6,10,18,2,4,20]) == false
p is_asc_order([9,8,7,6,5,4,3,2,1]) == false