=begin
Given 2 strings, your job is top find out if there is a substring that appears in both strings.

You will return true if you find a substring tht appears in both strings, or false if you do not.  We only care about substrings that are longer than one letter.
=end

=begin
P:
  Input: two strings
  Output: boolean

  Explicit requirements:
    - Given two strings
    - Return true if there is a substring that appears in both strings
    - Or false if you do not
    - Substrings are case insensitive
    - Only account for substrings longer than 1 letter

D:
      Intermediate: array

A:
      - Convert each string to lowercase
      
      - Collect all substrings from string one
        - Initialize an empty array `substrings`
        - Iterate through a range from 0 to string length (non-inclusive) |idx1|
           - Iterate through a range from idx1 + 1 to string length (non-inclusive) |idx2|
           - Get a slice of the string from idx1 to idx2 and add it to `substrings`

      
      - Collect all substrings from string two
        - Repeat similar process to the one above 
           - While iterating check if current substring is equal to any substrings in the array created in previous process
           - If so, return true
      - Implicitly return false

=end

def string1_substrings(string)
  string.downcase!
  
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1 + 1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
end

def substring_test(string_1, string_2)
  substrings = string1_substrings(string_1)
  string_2.downcase!

  (0...string_2.size).each do |idx1|
    (idx1 + 1...string_2.size).each do |idx2|
      current_sub = string_2[idx1..idx2]
      return true if substrings.any? { |sub| sub == current_sub }
    end
  end
  false
end

p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "Fun") == false
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265") == true
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtroiciou") == true