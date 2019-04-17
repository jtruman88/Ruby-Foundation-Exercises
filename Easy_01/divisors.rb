=begin

Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. The return value can be in any sequence you wish.

Examples

divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

=end

def divisors(num)
  divs = []
  num.downto(1) do |snum|
    divs << snum if num % snum == 0
  end

  divs.sort
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(448)
# puts divisors(99400891) == [1, 9967, 9973, 99400891]


# Further Exploration - You may have noticed that the final example took a few seconds, maybe even a minute or more, to complete. This shouldn't be a surprise as we aren't doing anything to optimize the algorithm. It's what is commonly called a brute force algorithm where you try every possible solution; these are easy to write, but they don't always produce fast results. They aren't necessarily bad solutions -- it depends on your needs -- but the speed of brute force algorithms should always be examined. How fast can you make your solution go? How big of a number can you quickly reduce to its divisors? Can you make divisors(999962000357) return almost instantly? (The divisors are [1, 999979, 999983, 999962000357].) Hint: half of the divisors gives you the other half.

def divs(number)
  divs = [1, number]
  if number.even?
    temp = 2
    divs << temp
    loop do
      answer = number / temp
      if divs.include?(answer)
        break
      else
        divs << answer
      end
    end
  end

  divs
end

puts "-- Second"
#puts divs(1) == [1]
#puts divs(7) == [1, 7]
#puts divs(12) == [1, 2, 3, 4, 6, 12]
#puts divs(98) == [1, 2, 7, 14, 49, 98]
#puts divs(99400891) == [1, 9967, 9973, 99400891]
#puts divs(999962000357) == [1, 999979, 999983, 999962000357]

=begin

check if number is even

If even:
1. store 2 in var temp, add temp to array
2. Divide the number by temp, If answer is included in array, break, else add answer to the array
3. If the answer is even, divide that by temp and add it to the array, then repeat 2 and 3 for answer
4. If the first division is not even, add 1 to temp until either another divisor is found or the numbers are already included in the array.
6. If a divisor is found, add temp to the array
7. Then divide the number by temp, store in asnwer and add to the array
8. If the new answer is even, go back to step 2 and 3
9. If the answer is not in the array

=end
