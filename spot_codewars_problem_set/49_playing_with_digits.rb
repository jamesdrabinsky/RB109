=begin
Some numbers have funny properties. For example:
89 --> 8¹ + 9² = 89 * 1
695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p
we want to find a positive integer k, if it exists, such as the sum of the digits of n taken to the successive powers of p is
equal to k * n.

In other words:
Is there an integer k such as : (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
If it is the case we will return k, if not return -1.
Note: n and p will always be given as strictly positive integers.
dig_pow(89, 1) should return 1 since 8¹ + 9² = 89 = 89 * 1
dig_pow(92, 1) should return -1 since there is no k such as 9¹ + 2² equals 92 * k
dig_pow(695, 2) should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
dig_pow(46288, 3) should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51
=end

=begin
P:
  Input: two integers
  Output: integer

  Requirements:
    - Given an integer (number) and an integer (multiplier)
    - Return k if there is an integer such that (a ^ p + b ^ (p+1) + c ^(p+2) + d ^ (p+3) + ...) = n * k
    - If there is no such number, return -1

D:
  Intermediate: range (1..(9 - num.size))

A:
  - Convert the number into a list of digits `arr`
  - Iterate through a range from (1..(9 - num.size)) |start|
    - Get all number from start...start + `arr`.size

=end

# def dig_pow(num, mult)
#   digits = num.digits.reverse
#   exponents = (1..9).each_cons(digits.size)

#   exponents.each do |range|
#     pairs = digits.zip(range)
#     sum = pairs.reduce(0) do |total, (base, range)|
#       total += base ** range
#     end
#     return sum / num if sum % num == 0
#   end
#   -1
# end

def dig_pow(num, mult)
  digits = num.digits.reverse
  exponents = mult...(mult + digits.size)
  pairs = digits.zip(exponents)

  sum = pairs.reduce(0) do |total, (base, range)|
    total += base ** range
  end
  sum % num == 0 ? sum / num : -1
end

def dig_pow(num, mult)
  digits = num.digits.reverse
  exponents = mult...(mult + digits.size)

  sum = exponents.map.with_index do |exp, idx|
    digits[idx] ** exp
  end.sum

  sum % num == 0 ? sum / num : -1
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51
p dig_pow(695, 2) == 2
