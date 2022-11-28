=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
     - Given a String
     - Return a new string in which every consonant character is doubled

A:

=end

def double_consonants(string)
  doubled = string.chars.map do |char|
    if char =~ /[A-Z]/i
      if char =~ /[^aeiou]/i
        char * 2
      else
        char
      end
    else
      char
    end
  end
  doubled.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""