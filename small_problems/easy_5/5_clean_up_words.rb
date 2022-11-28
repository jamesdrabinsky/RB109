=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string of words 
    - Return a string with all non-alphabetic characters replaced by spaces.  
    - If one or more non-alphabetic characters occur in a row, you should only have one space.

D:
  Input: string
  Intermediate: empty string to populate
  Output: string

A:
   - Convert the string into an array 
   - Iterate through the array
     - Iterate through each word
       - If the current character is non-alphabetic
        - If the next character is alphabetic
           - Replace with a " "
        - Else
          - Replace with a ""
  - Join the items in the array into a string with " " delimiter
  - Return string
=end

def cleanup(string)
  new_string = ''
  (0...string.size).each do |idx|
    if (string[idx] =~ /[^a-z]/) && (string[idx] != " ")
      new_string += " " if (string[idx+1] =~ /[a-z]/) || (idx == string.size - 1)
    else
      new_string += string[idx]
    end
  end
  new_string.gsub('  ', ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '


#######################################################################################
=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string of words 
    - Return a string with all non-alphabetic characters replaced by spaces.  
    - If one or more non-alphabetic characters occur in a row, you should only have one space.

D:
  Input: string
  Intermediate: empty string to populate
  Output: string

A:
  - Initialize a variable last equal to ''
  - Initialize a variable new_string which will be the string that will
  be returned
  - Iterate through a range from 0 to the string length (non-inclusive)
     - if the current character is non-alphabetic
        - add a " " to new_string if last does not equal idx - 1
    - else
       - add current character to new_string
    - reassing `last` to current index if it's correspond character is non-alphabetic
  - Retrn new_string
=end

def cleanup(string)
  last = ''
  new_string = ''

  (0...string.size).each do |idx|
    if string[idx] =~ /[^a-z]/
      new_string += " " if last != idx - 1
      last = idx if string[idx] =~ /[^a-z]/
    else
      new_string += string[idx]
    end
  end
  new_string
end

p cleanup("---what's my +*& line?") == ' what s my line '
