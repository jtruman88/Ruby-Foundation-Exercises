=begin

Write a method that takes an array as an argument, and a block that returns true or false depending on the value of the array element passed to it. The method should return a count of the number of times the block returns true.

You may not use Array#count or Enumerable#count in your solution.

Examples:

count([1,2,3,4,5]) { |value| value.odd? } == 3
count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
count([1,2,3,4,5]) { |value| true } == 5
count([1,2,3,4,5]) { |value| false } == 0
count([]) { |value| value.even? } == 0
count(%w(Four score and seven)) { |value| value.size == 5 } == 2

=end

def count(arr)
  ind = 0
  counter = 0
  while ind < arr.length
    counter += 1 if yield(arr[ind])
    ind += 1
  end
  
  counter
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# Further Exploration - Write a version of the count method that meets the conditions of this exercise, but also does not use each, loop, while, or until.

def count2(arr, &block)
  total = 0
  return total if arr == []
  total += 1 if yield(arr.pop)
  total + count2(arr, &block)
end

puts "Further Exploration:"
puts count2([1,2,3,4,5]) { |value| value.odd? } == 3
puts count2([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count2([1,2,3,4,5]) { |value| true } == 5
puts count2([1,2,3,4,5]) { |value| false } == 0
puts count2([]) { |value| value.even? } == 0
puts count2(%w(Four score and seven)) { |value| value.size == 5 } == 2