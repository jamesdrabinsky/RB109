=begin
triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and
also a straight double of the same number in num2.
If this isn't the case, return 0

Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2
=end

=begin
P:
  Input: two integers
  Output: integer

  Requirements:
    - Given two integers num1 and num2
    - Return 1 if there is a straight triple (ex. 999) in num1
    and a straight double of that same number in num2
    - If this isn't the case, return 0

D:
  Intermediate: sub-arrays

A:
  - Get all possible 3-character combinations of num1 and find one where all three characters are the same.  Assign this value to `triple`
  - Get all possible 2-character combinations of num2 and find one where all characters are equal to the unique number in `triple`
=end

def triple_double(num1, num2)
  triples = num1.to_s.chars.each_cons(3).select { |sub_arr| sub_arr.uniq.size == 1 }

  if triples
    triples.map(&:first).each do |triple_char|
      num2.to_s.chars.each_cons(2).each do |sub_arr|
        return 1 if sub_arr.all? { |char| char == triple_char }
      end
    end
  end
  0
end

p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(222915840269304588859998972033, 57099998065859796087081820) == 1