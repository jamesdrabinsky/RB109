=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

Notes:
the returned string should only contain lowercase letters
=end

=begin
P:
  Input: str
  Output: str

  Explicit requirements:
    - Given a string in camel case
    - Return a string in kebab cases (all lowercase with '-' separating each capitalized words)
    - the returned string should only contain lowercase letters
  
D:
  Input: str
  Output: str
  Intermediate: str empty

A:
  - Initialze a variable `new_str` to an empty string
  - Iterate through the string
       - If the currrent character is capitalized 
         - add its lowercase version prepended with a '-' to the new string
       - else add the character to the new string
  - Return `new_str`
=end

def kebabize(string)
  new_str = ''

  (0...string.size).each do |idx|
    if string[idx] =~ /[A-Za-z]/
      if string[idx] =~ /[A-Z]/
        new_str += '-' + string[idx].downcase
      else
        new_str += string[idx]
      end
    end
  end
  new_str
end

def kebabize(string)
  arr = string.split(/(?=[A-Z])/)
  arr.map { |word| word.tr('0-9', '').downcase }.join('-')
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'