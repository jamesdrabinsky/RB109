=begin
Write a simple regex to validate a username. Allowed characters are:

lowercase letters,
numbers,
underscore
Length should be between 4 and 16 characters (both included).
=end

def validate_usr(string)
  string.chars.all? { |char| char =~ /[a-z0-9_]/ } && (4..16).include?(string.size)
end

def validate_usr(username)
  username =~ /^[a-z0-9_]{4,16}$/ ? true : false
end

def validate_usr(username)
  !!username[/\A[a-z0-9_]{4,16}\z/]
end

=begin
- ^ asserts position at start of a line

- Match a single character present in the list below [a-z0-9_]

- {4,16} matches the previous token between 4 and 16 times, as many times as possible, giving back as needed (greedy)
- a-z matches a single character in the range between a (index 97) and z (index 122) (case sensitive)
- 0-9 matches a single character in the range between 0 (index 48) and 9 (index 57) (case sensitive)
- _ matches the character _ with index 9510 (5F16 or 1378) literally (case sensitive)
- $ asserts position at the end of a line

Global pattern flags 
g modifier: global. All matches (don't return after first match)
m modifier: multi line. Causes ^ and $ to match the begin/end of each line (not only begin/end of string)
=end

p validate_usr('asddsa') == true
p validate_usr('a') == false
p validate_usr('Hass') == false
p validate_usr('Hasd_12assssssasasasasasaasasasasas') == false
p validate_usr('') == false
p validate_usr('____') == true
p validate_usr('012') == false
p validate_usr('p1pp1') == true
p validate_usr('asd43 34') == false
p validate_usr('asd43_34') == true