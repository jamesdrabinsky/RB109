=begin
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that
character appears only once in the original string, or ")" if that character appears more than once in the original string.
Ignore capitalization when determining if a character is a duplicate.

Examples
"din" => "((("
"recede" => "()()()"
"Success" => ")())())"
"(( @" => "))(("
=end

=begin

=end

def duplicate_encode(string)
  counter = string.downcase.chars.tally
  arr = string.downcase.chars.map do |char|
    if counter[char] > 1
      ')'
    else
      '('
    end
  end
  arr.join
end

def duplicate_encoder(string)
  counter = string.downcase.chars.tally
  string.downcase.chars.map { |char| counter[char] > 1 ? ')' : '('}.join
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("