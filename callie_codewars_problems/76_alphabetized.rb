=begin
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!

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
    - Return the string in case-insensitive alphabetical order.  
    - White spaces shall be removed

A:
  - Convert the string into an array
  - Sort the array 
    - First by #downcase
    - Then by #upcase
  - Join array back into string and return it
=end

def alphabetized(string)
  string.scan(/[A-Z]/i).sort_by(&:downcase).join
end

p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"

str = " a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
p alphabetized(str) == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"

p alphabetized("!@$%^&*()_+=-`,") == ""
p alphabetized("The Holy Bible") == "BbeehHilloTy"
p alphabetized("CodeWars can't Load Today") == "aaaaCcdddeLnooorstTWy"