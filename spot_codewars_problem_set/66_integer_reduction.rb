=begin
In this Kata, you will be given two integers n and k and your task is to remove k-digits from n and return the lowest number possible, without changing the order of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 and return the lowest possible number. The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', because we have removed 8 and 9.

More examples in the test cases.

Good luck!
=end

def solve(n, k)
  n.digits.reverse.combination(n.to_s.size - k).min.join
end

# p solve(123056, 1) == '12056'
# p solve(123056,2) == '1056'
# p solve(123056,3) == '056'
# p solve(123056,4) == '05'
# p solve(1284569,1) == '124569'
# p solve(1284569,2) == '12456'
# p solve(1284569,3) == '1245'
# p solve(1284569,4) == '124'

string = "123056"
delete = 1
chunk = string.size - delete

p string.chars.combination(chunk).to_a.map(&:join)

(0...string.size).each do |idx|
  slice = string[0...idx] #+ string[idx + chunk...string.size - idx]
  p slice
end

