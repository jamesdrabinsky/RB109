=begin
Given a string, return a new string that has transformed based on the input:
Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.

For example:
"Example Input" ==> "iNPUT eXAMPLE"
You may assume the input only contain English alphabet and spaces.
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return a new string with the cases of every character swapped and the order of the words reversed

A:
  - Convert the string to an array
  - Iterate through the array (use `#map` to return a new array) with a counter (starting at 1)
    - Iterate through the current_string (use #map to return a new array) and transform each character to its opposite case and join the returned array into a string with "" delimiter
  - Return the new array with the reversed word order and swapped cases
=end

# def upcase?(char)
#   char =~ /[A-Z]/
# end

# def string_transformer(string)
#   arr = string.split
#   new_arr = arr.map.with_index(1) do |_, idx|
#     arr[-idx].chars.map { |char| upcase?(char) ? char.downcase : char.upcase }.join
#   end
#   new_arr.join(' ')
# end

# def string_transformer(string)
#   string.split(" ").reverse.map(&:swapcase).join(' ')
# end

def string_transformer(str)
  str.split(/\b/).reverse.map(&:swapcase).join
end

p string_transformer('Example string') #== 'STRING eXAMPLE'

