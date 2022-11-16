=begin
Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
=end

=begin  
P:
  Input: string
  Output integer

  Explicit requirements:
    - Given a string of words
    - Return the length of the shortest word

D:
  Input: string
  Output integer
  Intermediate: integer

A:
  - Initialize a variable `min` which will keep track of the shortest length
  - Initialzie a variabel `current_count` which keeps track of the length of the current word
  - Iterate through the string from 0 to string.size - 1
    - For each character that is not a ' ' add to `current_count`
    - If the current character is a ' ' 
       - check to see if `current_count` is less than min.  If so, min = current_count
        - Reset current_count
=end

def find_short(string)
  string.split.map(&:size).min
  # string.split.min_by(&:size).size
end

# def find_short(string)
#   min = string.size
#   current_count = 0

#   (0..string.size - 1).each do |idx|
#     if string[idx] != ' '
#       current_count += 1
#     else
#       min = current_count if current_count < min
#       current_count = 0
#     end
#   end
#   min = current_count if current_count < min
#   min
# end

p find_short("bitcoin take over the world maybe who knows perhaps") == 3
p find_short("turns out random test cases are easier than writing out basic ones") == 3
p find_short("lets talk about javascript the best language") == 3
p find_short("i want to travel the world writing code one day") == 1
p find_short("Lets all go on holiday somewhere very cold") == 2
p find_short("Let's travel abroad shall we") == 2