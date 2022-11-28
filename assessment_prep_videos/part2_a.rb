=begin
You have to create a method that takes a positive number 
and returns the next bigger number formed by the same digits

12 ==> 21
513 ==> 531
2017 ==> 2071
# If not bigger number can be composed using those digits, return -1

9 ==>> -1
111 ==>> -1
531 ==> -1
=end

=begin
P: 
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer
     - Return the next bigger number formed by the same digits
     - Return -1 if no bigger number can be formed

D:
  Input: integer
  Intermediate: array
  Output: integer

A:
  - Iterate through range with start point of the integer argument
  and the maximum possible number (Get this by sorting digits in array and converting back to integer)
  - Search for next number that includes all digits from integer argument
=end

# def next_bigger_number(num)
#   if (num < 10) || (num.digits.uniq.size == 1) || (num.digits.reverse == num.digits.sort_by { |i| -i })
#     return -1
#   end

#   (num + 1..).each do |next_num|
#     return next_num if num.to_s.chars.all? { |char| next_num.to_s.include?(char) }
#   end
# end


def next_bigger_number(num)
  max = num.digits.sort_by(&:-@).join.to_i
  return -1 if max == num

  (num + 1..max).each do |next_num|
    return next_num if num.to_s.chars.all? { |char| next_num.to_s.include?(char) }
    # return next_num if num.to_s,chars.sort == next_num.to_s.chars.sort
  end
  # return -1
end

##########################################################################

=begin
P: 
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer
     - Return the next bigger number formed by the same digits
     - Return -1 if no bigger number can be formed

D:
  Input: integer
  Intermediate: array
  Output: integer

A:
  - Convert the integer argument to an array
  - Get all combinations of the Array
  - select for sub_array that are larger than the original array and sort them
  - Select the first sub_array in sort array
  - Join select sub_array to a string and convert to an integer.
  - Return integer
=end

def next_bigger_number(num)
  arr = num.digits.reverse
  perms = arr.permutation(arr.size).to_a
  sorted = perms.map { |sub_arr| sub_arr.join.to_i }.sort
  sorted.select { |int| int > num }.fetch(0, -1)
end


# p next_bigger_number(9) == -1
# p next_bigger_number(12) == 21
# p next_bigger_number(513) == 531
# p next_bigger_number(2017) == 2071
# p next_bigger_number(111) == -1
# p next_bigger_number(531) == -1
# p next_bigger_number(123456789) == 123456798


