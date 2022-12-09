=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters
=end

=begin
P:
  Input: string
  Output: string

  Requirements:
    - Given a string
    - Return a string where each uppercase word is preceded by a "-"

A:
  - Convert the string to an array and iterate through it
    - If the letter is uppercase, downcase it and push it to an array with a "-" preceding it
    - Else push it to an array

=end

def kebabize(string)
  arr = string.scan(/[A-Z]/i).map.with_index do |char, idx|
    if char =~ /[A-Z]/
      "-#{char.downcase}" 
    else 
      char
    end
  end
  arr.join
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'