=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
=end

def pangram?(string)
  ("a".."z").all? { |letter| string.downcase.count(letter) > 0 }
end

def pangram?(string)
  ("a".."z").each do |letter|
    return false if string.downcase.count(letter) < 1
  end
  true
end

# def panagram?(string)
#   string.downcase.scan(/[a-z]/).uniq.size == 26
# end

# def panagram?(s)
#   ("A".."Z").to_a - s.upcase.chars == []
# end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false