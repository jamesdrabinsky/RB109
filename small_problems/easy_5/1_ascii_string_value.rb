=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)
=end

=begin
P:
  Input: string
  Output: integer

  Explicit requirements:
     - Given a string
     - Return its ASCII string value

D:
  Input: string
  Output: integer

A:
  - Initialize a varaible total to 0
  - Incremenet total by each characters ASCII value in the string
  - Return total
=end

def ascii_value(string)
  string.chars.reduce(0) do |total, char|
    total += char.ord
  end
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0