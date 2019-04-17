=begin

Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

Examples:

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []

=end

def missing(arr)
  nums = []
  arr.first.upto(arr.last) do |num|
    nums << num unless arr.include?(num)
  end

  nums
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []


# Further Exploration - Can you find a solution that wouldn't use a block?

def missing2(arr)
  (arr.min..arr.max).to_a - arr
end
