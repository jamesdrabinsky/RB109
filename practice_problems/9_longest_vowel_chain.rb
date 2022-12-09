=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.
=end

=begin
P:
  Input: String
  Output: integer

  Requirements:
     - Given a lowercase string that has alphabetic characters and no spaces
     - Return the length of the longest vowel substring.

A:
   - Initialize a variable `count` equal to 0
   
   - Iterate through a range from 0 to the string length (non-inclusive) |idx1|
    - Iterate through a range from idx1 to the string lenght (non-inclusive) |idx2|
      - Initialize a variable substring equal to string[idx1..idx2]
      - If all the characters in the substring are Vowels
         - count = the length of the substring if the length is greater than `count`
  - Return count
=end

def solve(string)
  count = 0

  (0...string.size).each do |idx1|
    (idx1...string.size).each do |idx2|
      substring = string[idx1..idx2]
      if substring.chars.all? { |char| char =~ /[aeiou]/ }
        count = substring.size if substring.size > count
      end
    end
  end
  count
end

def solve(string)
  count = 0
  lengths = []

  string.chars.each do |char|
    if char =~ /[aeiou]/
      count += 1
    else
      lengths << count
      count = 0
    end
  end
  lengths << count
  lengths.max
end

# def solve(s)
#   s.scan(/[aeiou]+/).map(&:size).max
# end

# def solve(s)
#   s.split(/[^aeiou]/).map{|x| x.size}.max
#  end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8