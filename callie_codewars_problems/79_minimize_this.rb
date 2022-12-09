=begin
Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product

minSum({5,4,2,3}) ==> return (22) 
The minimum sum obtained from summing each two integers product ,  5*2 + 3*4 = 22

minSum({12,6,10,26,3,24}) ==> return (342)
The minimum sum obtained from summing each two integers product ,  26*3 + 24*6 + 12*10 = 342

minSum({9,2,8,7,5,4,0,6}) ==> return (74)
The minimum sum obtained from summing each two integers product ,  9*0 + 8*2 +7*4 +6*5 = 74
=end

=begin
P:
  Input: array
  Output: integer

  Requirements:
    - Given an array of integers
    - Return the minimum sum which is obtained from summing each two integer products

D:
  - Intermediate - sub-arrays

A:
  - Get every n-sized combination of the array argument.
  - Split the integers in each sub-array into two nested arrays
=end

def min_sum(arr)
  sorted = arr.sort
  (0...sorted.size / 2).map { |idx| sorted[idx] * sorted[-idx - 1] }.sum
end

# p min_sum([5, 4, 2, 3]) == 22
# p min_sum([12, 6, 10, 26, 3, 24]) #== 342
# p min_sum([9, 2, 8, 7, 5, 4, 0, 6]) #== 74
# p min_sum([1, 2]) #== 2
# p min_sum([]) == 0

arr = [12, 6, 10, 26, 3, 24]
