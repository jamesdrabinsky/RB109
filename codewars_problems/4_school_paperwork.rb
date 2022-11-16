=begin
Your classmates asked you to copy some paperwork for them. 
You know that there are 'n' classmates and the paperwork has 'm' pages.

Your task is to calculate how many blank pages do you need. If n < 0 or m < 0 return 0.
=end

def paperwork(n, m)
  [m, n].any? { |x| x < 0 } ? 0 : m * n
end

p paperwork(5, 5) == 25
p paperwork(5, -5) == 0
p paperwork(-5, -5) == 0
p paperwork(-5, 5) == 0
p paperwork(5, 0) == 0