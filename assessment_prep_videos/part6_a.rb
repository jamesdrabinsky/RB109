=begin
You are going to be given an array of integers.  Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N.  If there is no index that would make this happen, return -1.
=end

=begin
P:
  Input: Array
  Output: integer

  Requirements:
    - Given an array of integers
    - Return the index where the sum of the numbers to the left of that index are equal to the sum of the numbers to the right of that index
    - If there is no index that would make this happend, return -1

D:
  Intermediate: Array (sub-arrays)

A:
   - Iterate through a range from 0 to the array length (non-inclusive) |idx|
    - Initialize two sub-arrays: 
       - One consisting of all elements to the left of the idx (from 0...idx)
       - One consisting of all the elements to the right of idx (from idx + 1 .. -1)
       - Return the idx if the two sub-arrays' sums are equal 
  - Return -1 if nothing is returned during iteration
=end

def find_even_index(arr)
  (0...arr.size).each do |idx|
    left, right = arr[...idx], arr[idx + 1..]
    return idx if left.sum == right.sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3