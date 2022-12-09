=begin
Your task is to remove all duplicate words from a string, leaving only single (first) words entries.
=end

=begin
P:
  Input: string
  Output: string

  Explicit requirements:
    - Given a string
    - Remove all duplicate words from the string, leaving only first word entries.

D:
  Input: string
  Output: string
  Intermediate: array

A:
  - Initialize variable `seen` to an empty array
  - Convert the string argument to an array and iterate through the array
    - Add each element to `seen` only if it does not already exist in the `seen`.
  - Join `seen` into string and return
=end

def remove_duplicate_words(string)
  string.split.uniq * ' '
end

def remove_duplicate_words(string)
  seen = string.split.each_with_object([]) do |word, arr|
    arr << word unless arr.include?(word)
  end
  seen * ' '
end

p remove_duplicate_words("alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta") == "alpha beta gamma delta"
p remove_duplicate_words("my cat is my cat fat") == "my cat is fat"