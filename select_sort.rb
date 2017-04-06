def sort(num)
  num.each_index do |x|
    min_index = min(num, x)
    num[x], num[min_index] = num[min_index], num[x]
  end
  return num
end

def min(subset, from)
  min_value = subset[from..-1].min
  min_index = subset[from..-1].index(min_value) + from
  return min_index
end

numbers = [9,8,7,6,5,4,3,2,1]

p sort(numbers)
