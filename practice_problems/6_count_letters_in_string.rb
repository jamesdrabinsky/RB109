=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.
=end

=begin
P:
  Input: string
  Output: hash

  Requirements:
    - Given a string
    - Retunr the letter count in a hash with the letter as a key and the count as a value.  The key must be a symbol instead of a string.

A:
  - Initialize a Hash with a default value of 0.
  - Convert the string to an array and iterate through it
    - Increment the current character's corresponding value by one in the hash (Convert the character to a symbol when referencing it)
  - Return the hash
=end

def letter_count(string)
  string.chars.each_with_object(Hash.new(0)) do |char, hsh|
    hsh[char.to_sym] += 1
  end
end

def letter_count(string)
  string.chars.tally.transform_keys(&:to_sym)
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}