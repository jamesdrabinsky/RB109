=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:
expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.
If you like
=end

=begin
P:
  Input: integer
  Output: string

  Explicit requirements:
     - Given an integer
     - Return it as a string in expanded form.

D:
  Input: integer
  Output: string
  Intermediate: array

A:
  - Store digits in array in revere order
  - Multiply each element by 10 to its index in the array
  - Reverse the array
  - Join the element in the array in a string with " + "
  - Return string
=end

def expanded_form(number)
  arr = number.digits.map.with_index { |num, i| num * (10**i) }
  arr.reject { |num| num == 0 }.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'