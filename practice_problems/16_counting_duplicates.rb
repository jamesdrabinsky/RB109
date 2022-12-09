=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
=end

=begin
P:
  Input: string
  Output: Integer

  Requirements:
    - Given a string
    - Return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string

D:
  Intermediate: hash

A:
  - Initialize a hash `duplicates` with a default value of 0
  - Convert the string argument to an array and iterate through it
    - Add one to the corresponding uppercase key in `duplicates` on every iteration
  - Return the count value in `duplicates` that are greater than 1
=end

def duplicate_count(string)
  duplicates = Hash.new(0)

  string.chars.each do |char|
    duplicates[char.upcase] += 1
  end
  duplicates.values.count { |v| v > 1 }
end

def duplicate_count(string)
  string.chars.group_by(&:upcase).values.count { |v| v.size > 1 }
end

def duplicate_count(text)
  text.downcase.chars.tally.count { |_, v| v > 1 }
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2