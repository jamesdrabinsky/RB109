=begin
Longest vowel chain

The vowel substrings in the word codewarriors are o,e,a,io. 
The longest of these has a length of 2. Given a lowercase
string that has alphabetic characters only and no spaces, 
return the length of the longest vowel substring. Vowels are
any of aeiou.
=end

=begin
P:
  Input: string
  Output: integer

  Explicit requirements:
     - Given a string
     - Return the length of the longest vowel substring
     - All letters are lowercase

D:
  Input: string
  Output: integer
  Intermediate: integer (for counting)

A:
  - Initialize a variable `counter` to 0
  - Initialize a variab;le `current_count` to 0
  - Iterate through the string
     - If the letter is in aeiou increment current count by 1
     - If the letter is a consonant
       - If current count is greater than count then replace count with current_count
       - reset current_count
  - If current count is greater than count then replace count with current_count
  - Return count
=end

def solve(str)
  max_ = 0
  (0..str.size - 1).each do |idx1|
    (idx1..str.size - 1).each do |idx2|
      current_str = str[idx1..idx2]
      if (current_str.chars.all? { |char| char =~ /[aeiou]/ }) && (current_str.size > max_)
        max_ = current_str.size
      end
    end
  end
  max_
end


# def solve(string)
#   count = 0
#   current_count = 0

#   (0..string.size - 1).each do |idx|
#     if %w[a e i o u].include?(string[idx])
#       current_count += 1
#     else
#       count = current_count if current_count > count
#       current_count = 0
#     end
#   end
#   count = current_count if current_count > count
#   count
# end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8