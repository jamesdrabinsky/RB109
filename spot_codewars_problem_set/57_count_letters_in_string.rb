=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key
and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.
=end

def letter_count(string)
  string.chars.tally.transform_keys(&:to_sym)
end

def letter_count(string)
  string.chars.each_with_object(Hash.new(0)) do |char, hash|
    hash[char.to_sym] += 1
  end
end

p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}