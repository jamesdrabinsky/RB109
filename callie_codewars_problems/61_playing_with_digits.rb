=begin
Some numbers have funny properties. For example:

89 --> 8¹ + 9² = 89 * 1

695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2

46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given a positive integer n written as abcd... (a, b, c, d... being digits) and a positive integer p

we want to find a positive integer k, if it exists, such that the sum of the digits of n taken to the successive powers of p is equal to k * n.
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
    - Given an integers (n, k)
    - Multiply each digit in the integer, n, by exponents from a range start at `k` and going to the length of `n` (non-inclusive)
    - If the result is evenly divisible by `n` then return the dividend, else return -1.

A:
  - Convert `n` into an array (#digits, #reverse)
  - Create pairs by combining the array to a range from `k` to the array length (non-inclusive)
  - Sum the result of multiply each number by its exponent and assign it to `res`
  - Return the dividend of dividing `res` by `n` if it divides evenly
=end

def dig_pow(n, k)
  arr = n.digits.reverse
  res = arr.zip(k...k + arr.size).reduce(0) do |total, (base, exp)|
    total += base**exp
  end
  res % n == 0 ? res / n : -1
end

p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51