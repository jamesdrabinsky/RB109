=begin
Count the number of Duplicates
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur
more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and
lowercase) and numeric digits.

Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
=end

=begin
P:
  Input: string
  Output: integer

  Requirements:
    - Given a string
    - Return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once.

E:
  abcdeaB --> 2 ("a" and "b")
  Indivisibilities --> 2 ("i" and "s")

A:
  - Initialize a hash with a default value of 0
  - Conver the string into an array and iterate through it
    - Increment the lowercase version of the key corrresponding to the element in the current iteration.
  - Count how many values are greater than 1 in the hash and return this value
=end

# def duplicate_count(string)
#   count = Hash.new(0)

#   string.chars.each do |char|
#     count[char.downcase] += 1
#   end

#   count.count { |_, v| v > 1 }
# end

def duplicate_count(string)
  string.chars.group_by(&:downcase).values.count { |v| v.size > 1 }
end

def duplicate_count(text)
  text.downcase.chars.tally.count { |k, v| v > 1 }
end

def duplicate_count(text)
  text.downcase.chars.group_by(&:itself)#.count { |_, v| v.count > 1 }
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2