=begin
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:
It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.

Examples
" Hello there thanks for trying my Kata" => "#HelloThereThanksForTryingMyKata"
" Hello World " => "#HelloWorld"
"" => false
=end

=begin
P:
  Input: string
  Output: string or `false`

  Requirements:
     - Given a string
     - Return a hashtag string following these rules:
        It must start with a hashtag (#).
        All words must have their first letter capitalized.
        If the final result is longer than 140 chars it must return false.
        If the input or the result is an empty string it must return false.

A:
  - Return false if the string argument stripped of spaces is an empty string
  - Convert the string to an array and iterate through the Array
     - Capitalize each element of the Array
  - Join the array to a string
  - Prepend a "#" to it
  - If the final string is longer than 140 chars then return false else return the string
=end

def generateHashtag(string)
  return false if string.strip.empty?

  new_string = "#" + string.split.map(&:capitalize).join
  new_string.size > 140 ? false : new_string
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") == "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p
generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
