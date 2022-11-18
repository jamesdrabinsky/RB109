=begin
Count letters in string

In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key
and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.
Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
=end

=begin
P:
  Input: string
  Output: hash (symbol key and integer value)

  Explicit requirements:
    - Given a string
    - Return a hash with the count of each letter
    - All letters are lowercase

D:
  Input: string
  Output: hash (symbol key and integer value)

A:
   - Initialize an empty hash with a default value of 0
   - Iterate through the string (by index)
     - On each iteration increment that letter's corresponding value in the hash by 1
=end

def letter_count(string)
  (0..string.size - 1).each_with_object(Hash.new(0)) do |idx, hash|
    current_key = string[idx].to_sym
    hash[current_key] += 1
  end
end

def letter_count(string)
  string.chars.each_with_object({}) do |char, hash|
    hash[char.to_sym] = hash.fetch(char.to_sym, 0) + 1
  end
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}