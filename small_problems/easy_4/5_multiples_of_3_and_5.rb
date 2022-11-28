=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.
=end

=begin
P:
  Input: integer
  Output integer

  Explicit requirements:
     - Given a number
     - Search for all multiples of 3 and 5 between 1 and the number
     and compute the sum of those multiples

D:
  Input: integer
  Intermediate: integer (0) to be incremented
  Output integer

A:
  - Initialize a variable total set to 0
  - Iterate through a range from 0 to integer argument (inclusive)
     - If the current number is divisible by 3 or 5 then add to to total
  - Return total
=end

def multisum(number)
  total = 0
  (0..number).each do |num|
    total += num if (num % 5 == 0) || (num % 3 == 0)
  end
  total
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168