=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.
=end

=begin
P:
  Input: string
  Output: hash

  Explicit requirements:
    - Given a string
    - Return a hash that contains three entries (lowercase, uppercase and neither)
    that represent the number of characters that are lowercase, uppercase or neither in the string

A:
   - Initialize a dictionary with three keys (:lowercase, :uppercase and :neither)
   and the value 0 for each
   - Iterate through a range 0 to the string length (non-inclusive)
    - On every iteration, increment the value of the appropriate key according to the current character
  - Return the hash
=end

def letter_case_count(string)
  counter = { lowercase: 0, uppercase: 0, neither: 0 }

  string.each_char.with_object(counter) do |letter, hsh|
    hsh[:lowercase] += 1 if letter =~ /[a-z]/
    hsh[:uppercase] += 1 if letter =~ /[A-Z]/
    hsh[:neither] += 1 if letter =~ /[^a-z]/i
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }