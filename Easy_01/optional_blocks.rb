=begin

Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply return the String 'Does not compute.'.

Examples:

compute { 5 + 3 } == 8
compute { 'a' + 'b' } == 'ab'
compute == 'Does not compute.'

=end

def compute
  block_given? ? yield : "Does not compute"
end

puts compute { 5 + 3 }
puts compute { 'a' + 'b' }
puts compute

#Further Exploration - Modify the compute method so it takes a single argument and yields that argument to the block. Provide at least 3 examples of calling this new version of compute, including a no-block call.

def compute2(arg)
  block_given? ? yield(arg) : "Does not compute - #{arg}"  
end

puts compute2(2) { |arg| 5 + arg }
puts compute2("hello") { |arg| "#{arg} world!" }
puts compute2('Noooo!')