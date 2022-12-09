=begin
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power
of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled
=end

=begin
P:
  Input: two integers
  Output: integer

  Requirements:
    - Given two integers, a base number and an exponent
    - Return the value of the base raised to the power of the exponent.  
    - Return nil if the second argument is negative

A:
  - Initialize a variable `base` equal to 1
  - Reassign `base` to the product of multplying it by itself
  - Repeat this n times (n being the second argument)
  - Return base
=end

def power(a, b)
  return nil if b.negative?

  base = 1
  b.times { base *= a }
  base
end


def power(a, b)
  (1..b).reduce(1) { |total, _| total * a } unless b.negative?
end

def power(base, exponent)
  return nil if exponent < 0
  ([base] * exponent).inject(:*) || 1
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil