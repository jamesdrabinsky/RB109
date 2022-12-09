=begin
Complete the solution so that the function will break up camel casing, using a space between words.

Example
"camelCasing"  =>  "camel Casing"
"identifier"   =>  "identifier"
""             =>  ""
=end

=begin
P:  
  Input: string
  Output: string 

  Requirements:
    - Given a string
    - Return the same string but with spaces between a lower and uppercase character

A:
  - Initialize a variable `new_string` equal to an emptry string
  - Iterate through a range from 0 to string.size (non-inclusive)
    - If the current character is uppercase, prepend a " " to it before adding it to `new_string`
    - Else add the character to `new_string`
  - Return `new_string`
=end

def solution(string)
  new_string = ''
  (0...string.size).each do |idx|
    char = string[idx]
    char =~ /[A-Z]/ ? new_string << " #{char}" : new_string << char
  end
  new_string
end

# positive look ahead
def solution(string)
  string.split(/(?=[A-Z])/).join(' ')
end

# positive look behind
def solution(string)
  string.split(/(?<=[A-Z])/).join(' ')
end

def solution(string)
  string.gsub(/(?=[A-Z])/, ' ')
end

p solution('camelCasing') == 'camel Casing'
p solution('camelCasingTest') == 'camel Casing Test'