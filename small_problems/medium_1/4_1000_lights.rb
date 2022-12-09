=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
=end

=begin
P:
  Input: integer
  Output: array

  Explicit:
    - Given an integer representing the total number of switches
    - Return an array which identifies which lights are on after n repetitions.

D:
  Input: integer
  Intermediate: hash
  Output: array

A:
  - Initialize a hash with a default value of false
  - Repeat the following process n -1 number of times.  Each repetition will be represented with an index (counter)
    - Iterate through a range from 1 through n (inclusive)
      - On every iteration, set the value of a key to its opposite
      if the key (number) is a multiple of the the index counter.
  - Once all iterations are complete, return the keys in the dictionary for which their associated values are true.  Return this in an array.
=end

def light_switch(n)
  lights = Hash.new(false)

  (1..n).each do |idx|
    (1..n).each do |key|
      lights[key] = !lights[key] if key % idx == 0
    end
  end
  # lights.select { |_, v| v }.keys
  on, off = lights.keys.partition { |k| lights[k] }
end

p light_switch(5)