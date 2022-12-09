=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of
digits.

For example:
greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits
=end

=begin
P:
  Input: String
  Output: integer

  Requirements:
    - Given a string of integers
    - Return the max product of 5 consecutive integers within the number

A:
  - Find all possible 5-consecutive-integer slices of the string argument.
  - Iterate through the combos
    - Convert each one into a string and then into an integer
  - Return the max value from the array of integers
=end

def greatest_product(string)
  max = 0

  string.chars.each_cons(5).each do |sub_arr|
    prod = sub_arr.map(&:to_i).reduce(:*)
    max = prod if prod > max
  end
  max
end

def greatest_product(string)
  max = 0
  arr = (0..string.size - 5).each do |idx|
    prod = string[idx...idx + 5].chars.map(&:to_i).reduce(:*)
    max = prod if prod > max
  end
  max
end

def greater_product(string)
  string.chars.each_cons(5).map { |arr| arr.map(&:to_i).reduce(&:*) }.max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

# string = "123834539327238239583"
# target = 5

# combos = (0..string.size - target).map do |idx|
#   string[idx...idx + target]
# end

# p combos
# p string.chars.each_cons(5).map(&:join)
