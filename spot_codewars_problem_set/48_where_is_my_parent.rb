=begin
Mothers arranged a dance party for the children in school. At that party, there are only mothers and their children. All
are having great fun on the dance floor when suddenly all the lights went out. It's a dark night and no one can see each
other. But you were flying nearby and you can see in the dark and have ability to teleport people anywhere you want.
Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, i.e. "aAbaBb" => "AaaBbb".
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string with uppercase letters representing Mothers and lowercase letters representing their children
    - Return a string in alphabetical roder where Mothers are followed by their children

E:
  AaaaaZazzz --> AaaaaaZzzz
  abBA --> AaBb

D:
  Intermediate: hash

A:
  - Initialize a hash with a default value of an empty array
  - Convert the string to an array and iterate through it
    - Add each character to the array of its corresponding uppercase key in the hash
  - Sort the hash by keys
  - Sort the hash values 
  - Join the elements in the hash value arrays
  - Join the arrays into a string and return the string
=end

def find_children(string)
  groups = string.chars.group_by(&:downcase)
  groups.sort.map(&:last).map(&:sort).join
end

def find_children(dancing_brigade)
  dancing_brigade.chars.sort_by { |char| [char.downcase, char] }.join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""