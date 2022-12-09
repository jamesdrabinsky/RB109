=begin
Given a string that includes alphanumeric characters ("3a4B2d") return the expansion of that string: The numeric values represent the occurrence of each letter preceding that numeric value. There should be no numeric characters in the final string.

Notes
The first occurrence of a numeric value should be the number of times each character behind it is repeated, until the next numeric value appears
If there are multiple consecutive numeric characters, only the last one should be used (ignore the previous ones)
Empty strings should return an empty string.
Your code should be able to work for both lower and capital case letters.

"3D2a5d2f"  -->  "DDDaadddddff"    # basic example: 3 * "D" + 2 * "a" + 5 * "d" + 2 * "f"
"3abc"      -->  "aaabbbccc"       # not "aaabc", nor "abcabcabc"; 3 * "a" + 3 * "b" + 3 * "c"
"3d332f2a"  -->  "dddffaa"         # multiple consecutive digits: 3 * "d" + 2 * "f" + 2 * "a"
"abcde"     -->  "abcde"           # no digits
"1111"      -->  ""                # no characters to repeat
""          -->  ""                # empty string
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string of alpha-numeric characters
    - Return a string with the alpha characters repeated n times (n being the numeric character preceding it
    - If there are multiple consecutive numeric characters, only the last one should be used

E:
  string_expansion('3abc') == ('aaabbbccc')

A:
  - Initialize a hash with a default array value
  - Convert the string to an array and iterate through it 
    - Set the number as the key
    - Push each alpha character after it to an array

=end

# def string_expansion(string)
#   groups = Hash.new { |h, k| h[k] = [] }
#   num = 1

#   string.chars.each do |char|
#     if char =~ /[0-9]/
#       num = char.to_i
#     else
#       groups[num] << char
#     end
#   end

#   # groups.each_with_object([]) do |(k, v), arr|
#   #   v.each do |char|
#   #     arr << char
#   #   end
#   # end

#   # groups.flat_map { |k, v| v * k }.sort_by { |char| string.index(char) }.join
#   # groups.flat_map { |k, v| v * k }.sort.join
# end

def string_expansion(string)
  num = 1
  new_string = ""

  string.chars.each do |char|
    char =~ /[0-9]/ ? num = char.to_i : new_string += char * num
  end
  new_string
end

p string_expansion('3abc') == ('aaabbbccc')
p string_expansion('3D2a5d2f') == ('DDDaadddddff')
p string_expansion('0d0a0v0t0y') == ('')
p string_expansion('3d332f2a') == ('dddffaa')
p string_expansion('abcde') == ('abcde')