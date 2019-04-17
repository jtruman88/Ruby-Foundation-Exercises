=begin

For this exercise, we'll be learning and practicing our knowledge of the arity of lambdas, procs, and implicit blocks. Two groups of code also deal with the definition of a Proc and a Lambda, and the differences between the two. Run each group of code below: For your answer to this exercise, write down your observations for each group of code. After writing out those observations, write one final analysis that explains the differences between procs, blocks, and lambdas.

# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

=end

#puts "Group 1:"
#my_proc = proc { |thing| puts "This is a #{thing}." }
#puts my_proc
#puts my_proc.class
#my_proc.call
#my_proc.call('cat')
#my_proc.call('cat', 'dog')

#puts "Group 2:"
#my_lambda = lambda { |thing| puts "This is a #{thing}" }
#my_second_lambda = -> (thing) { puts "This is a #{thing}" }
#puts my_lambda
#puts my_second_lambda
#puts my_lambda.class
#my_lambda.call('dog')
#my_lambda.call('dog', 'cat')
#my_lambda.call
#my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

#puts "Group 3:"
#def block_method_1(animal)
#  yield
#end
#
#block_method_1('seal') { |seal| puts "This is a #{seal}."}
#block_method_1('seal')

puts "Group 4:"
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

puts ''
puts "Group 1 Observations:"
puts "A proc seems to allow you to call it without the correct amount of arguments."
puts ''
puts "Group 2 Observations:"
puts "A lambda is a type of Proc. Lambdas do not allow you to pass in the wrong amount of arguments without throwing an exception."
puts ''
puts "Group 3 Observations:"
puts "A implicit block will not complain if you do not pass the correct amount of arguments. However, if you try to yield in a method when a block is not passed in, it will throw an exception."
puts ''
puts "Group 4 Observations:"
puts "A implicit block will not complain if it is given the wrong amount of argummets, however, just like anyone where else in Ruby, if a reference is made to a variable that does not exist inside of the block, it will throw an error."
puts ''
puts "Analysis of difference between blocks, procs and lambdas:"
puts "Blocks and Procs do not seem to care if you give them the correct amount of arguments, however lambdas do and will throw an exception if the wrong amount is given. Also, just like typical variable calling rules in Ruby, if a call to an undefined variable is made within a block, Proc or lambda, there will be an exception."
