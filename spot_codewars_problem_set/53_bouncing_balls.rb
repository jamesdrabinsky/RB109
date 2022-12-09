=begin
A child is playing with a ball on the nth floor of a tall building. The height of this floor, h, is known.
He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height (a bounce of 0.66).
His mother looks out of a window 1.5 meters from the ground.
How many times will the mother see the ball pass in front of her window (including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater than the window parameter.

Example:
- h = 3, bounce = 0.66, window = 1.5, result is 3
- h = 3, bounce = 1, window = 1.5, result is -1
(Condition 2) not fulfilled).
=end

=begin
P:
  Input: three integers
  Output: integer

  Requirements:
    - Given a floor height, a ball bounce height and a window height
    - Return how many times will the person at the window see the ball pass in front of the window (including when it's falling and bouncing).
   -  If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

E:
- h = 3, bounce = 0.66, window = 1.5, result is 3
falls --> + 1
bounces --> 1.98 -- > + 1
falls --> + 1
bounces --> 1.3068

A:
  - Initialize a count starting at 1
  
  - Invoke `loop`
    - Reassign `h` to the result of multiplying `h` by `b`
    - Break if `h` is less than `w`
    - Increment count by 2
  - Return count 
=end

def bouncingBall(h, b, w)
  return -1 if ((h < 0) || (b <= 0 || b >= 1) || (w >= h))
  
  count = 1
  loop do
    h *= b
    break if h <= w
    count += 2
  end
  count
end

# def bouncingBall(h, bounce, window)
#   return -1 unless h > 0 && h > window && bounce > 0 && bounce < 1
  
#   count = 1
#   h *= bounce
#   while h > window
#     # count += 2
#     h *= bounce
#     count += 2
#   end
  
#   count
# end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1

