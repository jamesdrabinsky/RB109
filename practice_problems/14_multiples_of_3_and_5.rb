=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.
=end

=begin
P:
  Input: integer
  Output: Integer

  Requirements:
    - Given an Integer
    - Return the sum of all numbers BELOW the integer argument that are multiple of either 3 OR 5
    - Return 0 if the integer argument is negative

A:
  - Initialize a variable `total` equal to 0
  - Iterate through a range of from 1 to the integer argument - 1
    - increment `total` by the number in the current iteration if it is a multiple of either 3 OR 5
  - Return `total`
=end

def solution(num)
  total = 0

  (1...num).each do |int|
    total += int if (int % 5 == 0) || (int % 3 == 0)
  end
  total
end

def solution(num)
  (1...num).sum { |int| (int % 3 == 0) || (int % 5 == 0) ? int : 0 }
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168