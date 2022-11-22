=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The
quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
=end

=begin
P:
  Input: strong
  Output: boolean

  Explicit requirements:
    - Given a string
    - Return true if it uses the letters A-Z at leasdt once 
    - case is irrelevant

D:
  Input: string
  Output: boolean  
  Intermediate: range

A:
  - Iterate through a range of letters a through z
      - For each letter check if the its count within the string argument is greater than 0
  - If all letters have a count > 0 then return true, else false
=end

def panagram?(string)
  ('a'..'z').all? { |letter| string.downcase.count(letter) > 0 }
end

def panagram?(string)
  hsh = ('a'..'z').map { |letter| [letter, 0] }.to_h

  string.downcase.chars.each do |char|
    hsh[char] += 1 if hsh.keys.include?(char)
  end
  hsh.values.all? { |v| v > 0 }
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false