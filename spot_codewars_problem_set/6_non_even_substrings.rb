=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7. See test cases for more examples.
=end

def solve(string)
  count = 0

  (0..string.size - 1).each do |idx1|
    (idx1..string.size - 1).each do |idx2|
      current_str = string[idx1..idx2]
      count += 1 if current_str.to_i.odd?
    end
  end

  count
end

def solve(string)
  substrings = (0..string.size - 1).each_with_object([]) do |idx1, arr|
    (idx1..string.size - 1).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
  substrings.count { |str| str.to_i.odd? }
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28