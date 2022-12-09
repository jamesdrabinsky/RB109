=begin
Complete the code which should return true if the given object is a single ASCII letter (lower or upper case), false otherwise.
=end

class String
  def letter?
    /\A[a-z]\z/i === self
  end
end

p "".letter? == false
p "a".letter? == true
p "X".letter? == true
p "7".letter? == false
p "*".letter? == false
p "ab".letter? == false
p "a\n".letter? == false