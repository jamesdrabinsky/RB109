=begin
Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.

For example, a tower with 3 floors looks like this:

[
  "  *  ",
  " *** ", 
  "*****"
]
And a tower with 6 floors looks like this:

[
  "     *     ", 
  "    ***    ", 
  "   *****   ", 
  "  *******  ", 
  " ********* ", 
  "***********"
]
=end

def towerBuilder(num)
  (1..).step(2).each do |next_num|
    stars << next_num
    break if stars.size == num
  end
  stars.map { |times| ('*' * times).center(stars.max) }
end

def towerBuilder(n)
  (1..n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end

def towerBuilder(num)
  stars = []
  count = 1

  while stars.size < num
    stars << count
    count += 2
  end
  
  stars.map { |times| ("*" * times).center(stars.max) }
end



# p towerBuilder(1) ==  ['*']
# p towerBuilder(2) == [' * ', '***']
# p towerBuilder(3) == ['  *  ', ' *** ', '*****']

def towerBuilder(num)
  (1..).step(2).each do |next_num|
    stars << next_num
    break if stars.size == num
  end
  stars.map { |times| ('*' * times).center(stars.max) }
end