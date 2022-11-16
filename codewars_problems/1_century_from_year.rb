=begin
The first century spans from the year 1 up to and including the year 100, the second century - 
from the year 101 up to and including the year 200, etc.

Given a year, return the century it is in.

1705 --> 18
1900 --> 19
1601 --> 17
2000 --> 20
=end

=begin
P:
  Input: integer
  Output: integer

  Explicit requirements:
     - Given an integer (year) return the century it is in.

D:
  Input: integer
  Output: integer
  Intermediate: string

A:
  - Divide the integer argument by 100.
  - Add 1 If the last number in the integer is not 0 return the result + 1 else return the result 
=end

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century
end

p century(1705) == 18
p century(1900) == 19
p century(1601) == 17
p century(2000) == 20
p century(89) == 1