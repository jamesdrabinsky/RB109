=begin
Count the number of divisors of a positive integer n.

Random tests go up to n = 500000.
=end

=begin
P:
  Input: Integer
  Output: Integer

  Explicit requirements:
    - Given an integer
    - Count the number of divisors of a the integer
    - The integer is positive

D:
  Input: Integer
  Output: Integer
  Intermediate: Range

A:
  - Iterate through range from 1 to n
  - Count all integers where n % integer is equal to 0
  - Return count
=end

def divisors(number)
  (1..number).count { |num| number % num == 0 }
end

p divisors(1) == 1
p divisors(10) == 4
p divisors(11) == 2
p divisors(25) == 3
p divisors(54) == 8