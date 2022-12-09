=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
    - Given an array of integers
    - Find the index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N.
    - If there is no index that would make this happen, return -1

D:
  Intermediate: sub-array

A:
   - Iterate through a range from 0 to the array length (non-inclusive)
    - Initialize variables `left` and `right`
    - `left` will be a slice of the array from index 0 to the current number in the range (non-inclusive)
    - `right` will be a slice of the arrauy from the current number in the range + 1 to the last index (-1) (inclusive)
    - If the sums of the `left` and `right` are equal return the current range number
  - Else return -1
=end

def find_even_index(arr)
  (0...arr.size).each do |idx|
    left, right = arr[0...idx], arr[idx + 1..-1]
    return idx if left.sum == right.sum
  end
  -1
end

# def find_even_index(arr)
#   arr.each_index { |i| return i if arr[0...i].sum == arr[(i + 1)..-1].sum }
#   -1
# end

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1