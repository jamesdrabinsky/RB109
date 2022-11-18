=begin
Return substring instance count

Complete the solution so that it returns the number of times the 
search_text is found within the full_text.

Usage example:
solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1
=end

=begin
P:
  Input: two strings
  Output: integer

  Explicit requirements:
     - Given a full_text string and a search_text string
     - Return the number of times the search_text appears in the full_text

D:
  Input: two strings
  Output: integer

A:
  - Initialize a variabkle `count` equal to 0
  - Iterate through a range from 0 to full_text.size - 1 with alias idx
    - if the string slice from idx to (idx + the length of search_text) is equal to the search_text 
      then increment `count` by 1
=end

def solution(full, search)
  count = 0

  (0..(full.size - 1)).each do |idx|
    count += 1 if full[idx...(idx + search.size)] == search
  end
  count
end

p solution('abcdeb', 'b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1