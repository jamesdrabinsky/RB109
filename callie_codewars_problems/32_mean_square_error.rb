def solution (arr1, arr2)
  arr1.each_index.sum { |i| (arr[i] - arr2[i]).abs ** 2 }.fdiv(arr1.size)
end

def solution (arr1, arr2)
  arr1.zip(arr2).sum { |a, b| (a - b)**2 } .fdiv(arr1.size)
end