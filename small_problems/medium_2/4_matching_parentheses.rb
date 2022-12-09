=begin
Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.
=end

=begin
P:
  Input: string
  Output: boolean

  Requirements:
    - Given a String
    - Return true if all the parentheses are properly balanced in the string

A:
   - Intialize a variable `count` equal to 0
   - Iterate through a range from o to string.size (non-inclusive)
      - If the character at the current index is equal to "(", add 1 to `count`
      -If the character at the current index is equal to ")", subtract 1 from `count`
   - Once iteration is complete, return true if count = 0
=end

def balanced?(string)
  count = []

  string.chars.each_index do |idx|
    if string[idx] == "("
      count << "("
    elsif string[idx] == ")"
      return false if count.empty?
      
      count.pop
    end
  end
  count.empty?
end

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false