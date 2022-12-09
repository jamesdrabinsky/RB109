=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example (Input --> Output):

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)
=end

=begin
P:
  Input: integer
  Output: integer

  Requirements:
    - Given an integer
    - Return its multiplicatve persisitence, which is the number of times you must multiply the digits in num until you reach a single digit.

E:
  39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)

A:
  - Initialize a variable `count` equal to 0
  - Invoke `loop` and pass in `do..end` block
    - reassign `num` to the result of multiplying its digits
    - break when num is a single digit
    - Increment `count` by 1
  - Return `count`
=end

def persistence(num)
  count = 0

  loop do
    break if num.digits.size == 1

    num = num.digits.reduce(:*)
    count += 1
  end
  count
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3