=begin
Implement String#digit? (in Java StringUtils.isDigit(String)), which should return true if given object is a digit (0-9), false otherwise.
=end

class String
  def digit?
    /\A\d\z/ === self
  end
end

p "".digit? == false
p "7".digit? == true
p " ".digit? == false
p "a".digit? == false
p "a5".digit? == false
p "14".digit? == false