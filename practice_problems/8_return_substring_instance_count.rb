=begin
Complete the solution so that it returns the number of times the search_text is found within the full_text.
=end

=begin
P:
  Input: two strings
  Output: integer

  Requirements:
    - Given two strings (full_text, search_text)
    - Return the number of times the search_text is found within full_text
=end

def solution(full_text, search_text)
  count = 0

  (0...full_text.size).each do |idx1|
    (idx1...full_text.size).each do |idx2|
      count += 1 if full_text[idx1..idx2] == search_text
    end
  end
  count
end

# def solution(full_text, search_text)
#   counter = 0
  
#   full_text.chars.each_with_index do |char, index|
#     if char == search_text[0]
#       substring = full_text[index, search_text.size]
#       counter += 1 if substring == search_text
#     end
#   end

# def solution(full_text, search_text)
#   full_text.scan(search_text).size
# end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1