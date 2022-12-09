=begin
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.
=end

=begin
P:
  Input: integer
  Output: string

  Requirements:
    - Given a number
    - Return it as a string in Expanded Form.

D:
  Intermediate: array

A:
  - Convert the number to an array and reverse it
  - Iterate through the array with an index counter
     - Multiply each element by (10**{index})
  - Join the element of the resulting array into a string with a " + " delimiter
=end

def expanded_form(num)
  digits = num.digits.map.with_index { |digit, idx| digit * (10**idx) }
  digits.reject { |digit| digit == 0 }.reverse.join(" + ")
end

def expanded_form(num)
  num.digits.map.with_index { |digit, idx| digit * (10**idx) }.reject(&:zero?).reverse.join(" + ")
end

# p expanded_form(12) == '10 + 2'
# p expanded_form(42) == '40 + 2'
p expanded_form(70304) #== '70000 + 300 + 4'