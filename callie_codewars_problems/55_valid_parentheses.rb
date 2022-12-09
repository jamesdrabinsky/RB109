=begin
Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

Examples
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
Constraints
0 <= input.length <= 100

Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).
=end

def valid_parentheses(string)
  count = 0

  string.chars.each do |char|
    if char == "("
      count += 1
    elsif char == ")"
      count -=1
    end
    return false if count < 0
  end
  count == 0
end

p valid_parentheses("  (") == false
p valid_parentheses(")test") == false
p valid_parentheses("") == true
p valid_parentheses("hi())(") == false
p valid_parentheses("hi(hi)()") == true