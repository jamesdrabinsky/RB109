=begin
You might know some pretty large perfect squares. But what about the NEXT one?

Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.

If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is non-negative.

Examples:(Input --> Output)

121 --> 144
625 --> 676
114 --> -1 since 114 is not a perfect square
=end

=begin

=end

def perfect_square?(num)
  square_root = Math.sqrt(num)
  square_root.round(1) == square_root
end

def find_next_square(num)
  return - 1 unless perfect_square?(num)

  (num + 1..Float::INFINITY).each do |next_num|
    return next_num if perfect_square?(next_num)
  end
end

def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? number**2 : -1
end

p find_next_square(121) == 144
p find_next_square(625) == 676
p find_next_square(319225) == 320356
p find_next_square(15241383936) == 15241630849