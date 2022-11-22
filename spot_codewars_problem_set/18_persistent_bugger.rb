=begin

Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is
the number of times you must multiply the digits in num until you reach a single digit.
For example:
persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
# and 4 has only one digit
persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
# 1*2*6=12, and finally 1*2=2
persistence(4) # returns 0, because 4 is already a one-digit number
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer
     - Return the number of times you must multiply the diigts in num intil you reach a single digit.

D:
  Input: integer
  Output: integer

A:
  - Initialize a variable res to 0
  - Initialize a count = 0
  - Initiate a loop
     - set res equal to the result of multiplying the numbers in the integer argument
     - Increment count by 1
     - Break from loop if res is less than 10
     - set number as equal to res
  - Return the count
=end

def persistence(number)
  count = 0

  loop do
    break if number < 10

    number = number.digits.reduce(:*)
    count += 1
  end
  count
end

# def persistence(number)
#   count = 0

#   if number < 10
#     return count
#   else
#     persistence(number)
#   end

#   number = number.digits.reduce(:*)
#   count += 1
# end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4