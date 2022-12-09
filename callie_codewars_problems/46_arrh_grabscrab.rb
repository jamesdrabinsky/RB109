=begin
Pirates have notorious difficulty with enunciating. They tend to blur all the letters together and scream at people.

At long last, we need a way to unscramble what these pirates are saying.

Write a function that will accept a jumble of letters as well as a dictionary, and output a list of words that the pirate might have meant.

For example:

grabscrab( "ortsp", ["sport", "parrot", "ports", "matey"] )
Should return ["sport", "ports"].

Return matches in the same order as in the dictionary. Return an empty array if there are no matches.

Good luck!
=end

=begin
P:
  Input: String and array
  Output: array

  Requirements:
    - Given a string and an array
    - Return an array of words that can be formed by the string

A:
  - Iterate through the array argument
    - Select for the strings that, when converted to an array and sorted, are equal to the string argument converted to an array
=end

def grabscrab(string, arr)
  arr.select do |word|
    word.chars.sort == string.chars.sort
  end
end


p grabscrab("trisf", ["first"]) == ["first"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("ourf", ["one","two","three"]) == []