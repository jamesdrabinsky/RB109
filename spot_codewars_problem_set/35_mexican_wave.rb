=begin
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string
and you must return that string in an array where an uppercase letter is a person standing up.
Rules
1. The input string will always be lower case but maybe empty.
2. If the character in the string is whitespace then pass over it as if it was an empty seat.
=end

=begin
P:
  Input: string
  Output: array

  Requirements:
    - Given a string
    - Return an array with the string value repeated n number of times (n being the number of alpha characters in the string)
    - On each repetition, the next alpha character is capitalized 
    - Pass over the white spaces

A:
  - Initialize a variable `index` equal to the value 0
  - Get a count of all alpha characters in the string and assign it to the variable `alpha_count`
  - Initialize a variable `wave` equal to an emptry array

  - Invoke the `loop` method
    - If the character at the `index` index is an alpha character, append it to the rest of the string and push it to the `wave`
    - Increment `index` by 1
    - break when `index` reach alpha_characters - 1
  - return `wave`
=end

# def wave(string)
#   return [] if string.empty?

#   index = 0
#   wave = []
#   alpha_characters = string.count("a-z")

#   loop do
#     if string[index] =~ /[a-z]/
#       wave << string[0...index] + string[index].upcase + string[index + 1..]
#     end
#     index += 1
#     break if index > alpha_characters
#   end
#   wave
# end

# def wave(string)
#   alpha_idx = string.chars.map.with_index { |_, i| i if string[i] =~ /[a-z]/ }

#   alpha_idx.each_with_object([]) do |idx, arr|
#     arr << (string[0...idx] + string[idx].upcase + string[idx + 1..]) if idx
#   end
# end

def wave(string)
  (0...string.size).each_with_object([]) do |idx, arr|
    if string[idx] =~ /[a-z]/
      arr << (string[0...idx] + string[idx].upcase + string[idx + 1..])
    end
  end
end

def wave(string)
  string.chars.each_index.with_object([]) do |idx, arr|
    if string[idx] =~ /[a-z]/
      arr << (string[0...idx] + string[idx].upcase + string[idx + 1..])
    end
  end
end

p wave("hello" ) == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]

p wave("") == []

p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]