=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string
as a hash sorted by the highest number of occurrences.
The characters should be sorted alphabetically e.g:
get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=end

=begin
P:
  Input: string
  Output: hash (int-array)

D:
  Input: string
  Output: hash (int-array)
  Intermediate: array

A:
  - Build a hash with each letter and its count in the argument string
  - Build a new hash with a default array value with the unique counts as keys
  and the letters with those counts as elements in the value arrays
  - Return this hash
=end

def get_char_count(string)
  grouped_counts = Hash.new { |h, k| h[k] = [] }

  letter_counts = string.downcase.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1 if char =~ /[a-z0-9]/
  end

  letter_counts.each do |key, value|
    grouped_counts[value] << key
  end
  grouped_counts.transform_values(&:sort)
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}