=begin
Very simple, given an integer or a floating-point number, find its opposite.

1: -1
14: -14
-34: 34
=end

=begin
P:
  Input: integer
  Output: integers

  Explicit requirements:
    - Given an integer find it's opposite

D:
  Subtract the number * 2 from number

=end

def opposite(number)
  -number
end


def opposite(number)
  number - (number * 2)
end

p opposite(1) == -1
p opposite(14) == -14
p opposite(-34) == 34
p opposite(1.1) == -1.1
