=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.
=end

=begin
P:
  Input: integer
  Output: 

  Explicit requirements:
     - Given a positive integer, n
     - Output a right triangle

A:
=end

def triangle(n)
  (1..n).each do |num|
    spaces = " " * (n - num)
    puts "#{spaces}#{'*' * num}"
  end
end

# triangle(5)

=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)

=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
