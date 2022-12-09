=begin
Write a function with the signature shown below:

def is_int_array(arr)
  true
end

returns true  / True if every element in an array is an integer or a float with no decimals.
returns true  / True if array is empty.
returns false / False for every other input.
=end

=begin
P:
  Input: Array
  Output: boolean

  Requirements:
    - Given an array of integers or an emptry array
    -  returns true if every element in an array is an integer or a float with no decimals.
    - returns true if array is empty.
    - returns false for every other input.

A:
  - Iterate through array and check that each element is either an integer or a float with no decimals
    - For floats, check that the number rounded to one decimal spot and converted to a float == number
    - Return true if this is the case
  - Return true if the array is empty
  - Else return false
=end

def is_int_array(arr)
  if arr.nil? || arr.is_a?(String) || arr.any? { |elem| elem.is_a?(String) }
    return false
  elsif arr.empty?
    return true
  elsif arr.any? { |elem| elem.nil? }
    return false
  elsif arr.all? { |elem| (elem.is_a?(Integer)) || (elem.round(0).to_f == elem) }
    return true
  end
  
  false
end

p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false