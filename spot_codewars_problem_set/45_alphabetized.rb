=begin
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in
"case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!
The input is restricted to contain no numerals and only words containing the english alphabet letters.
Example:
alphabetized("The Holy Bible") # "BbeehHilloTy"
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return the string re-ordered in "case-insensitively-alphabetical-order-of-appearance" order.
    - White-spaced and punctuation will be removed.

D:
  Intermediate: hash

A:
  - Initialize a hash with a default value of an array
  - Remove all spaces from string
  - Convert the string to an array and iterate through it
    - Add each character to the hash array of its corresponding upper-cased version key
  - Join all elements in the hash arrays
  - Join all string elements in the new array and return this new string
=end

def alphabetized(string)
  groups = Hash.new { |h, k| h[k] = [] }

  alpha_chars = string.chars.select { |char| char =~ /[a-z]/i }
  alpha_chars.each do |char|
    groups[char.upcase] << char
  end
  groups.sort.to_h.values.map(&:join).join
end

# def alphabetized(string)
#   string.gsub(" ", "").chars.group_by(&:upcase).values.map(&:join).join
# end

# def alphabetized(s)
#   s.scan(/[a-z]/i).sort_by(&:downcase).join
# end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L            M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

