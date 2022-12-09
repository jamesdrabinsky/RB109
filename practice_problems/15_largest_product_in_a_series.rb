=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.
=end

=begin
P:
  Input: string
  Output: integer

  Requirements:
    - Given a string of integers
    - Return the greatest product of five consecutive digits in the string of digits

D:
  Intermediate: array

A:
  - Initialize a variable `max` equal to 0
  - Initialize a variable `n` equal to 4
  - Iterate through a range from 0 to the string length - `n` |idx|
     - Intialize a substring equal to string[idx..idx+4]
     - Convert the substring to a list
     - Convert each list element to a number
     - And get the cumulative product of that list of numbers
     - If the product is greater than `max` than max = the product
  - Return max
=end

def greatest_product(string)
  max = 0
  n = 5 # iterate through range starting at 0 to string length - n (INCLUSIVE)

  (0..string.size - n).each do |idx| 
    substring = string[idx...idx + n] # Take a slice from current index to current index + n (NON-INCLUSIVE)
    product = substring.chars.map(&:to_i).reduce(:*)
    max = product if product > max
  end
  max
end

# def greatest_product(n)
#   n.chars.each_cons(5).map { |a| a.map(&:to_i).reduce(:*) }.max
# end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0


# string = 10.times.map { [*"a".."z"].sample }.join
# string = "knuloszebp"
# n = 5

# (0..string.size - n).each do |idx| # iterate through range starting at 0 to string length - n (INCLUSIVE)
#   p string[idx...idx + n] # Take a slice from current index to current index + n (NON-INCLUSIVE)
# end

# "knulo"
# "nulos"
# "ulosz"
# "losze"
# "oszeb"
# "szebp"
