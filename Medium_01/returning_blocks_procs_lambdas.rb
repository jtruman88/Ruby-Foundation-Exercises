# For this exercise, we'll be learning and practicing our knowledge of returning from lambdas, procs, and implicit blocks. Run each group of code below: For your answer to this exercise, write down your observations for each group of code. After writing out those observations, write one final analysis that explains the differences between procs, blocks, and lambdas.

#puts "Group 1:"
#def check_return_with_proc
#  my_proc = proc do
#    puts "Now inside the Proc"
#    return 
#  end
#  puts "Inside the method."
#  my_proc.call
#  puts "Back inside the Method"
#end
#
#check_return_with_proc

#puts "Group 2:"
#my_proc = proc { return "In the Proc" }
#
#def check_return_with_proc_2(my_proc)
#  puts "In the Method"
#  my_proc.call
#end
#
#puts check_return_with_proc_2(my_proc)

#puts "Group 3:"
#def check_return_with_lambda
#  puts "In the Method"
#  my_lambda = lambda do
#    puts "In the block now."
#    return
#  end
#  my_lambda.call
#  puts "In the Method again."
#end
#
#check_return_with_lambda

#puts "Group 4:"
#my_lambda = lambda do
#  puts "In the block now."
#  return
#end
#
#def check_return_with_lambda(my_lambda)
#  puts "In the method."
#  my_lambda.call
#  puts "Back in the method."
#end
#
#check_return_with_lambda(my_lambda)

#puts "Group 5:"
#def block_method_3
#  yield("text")
#end
#
#block_method_3 { |text| return text }


puts ''
puts "Group 1 Observations:"
puts "When a Proc  has an explicit return, it does not give control back to the method."
puts ''
puts "Group 2 Observations:"
puts "When a Proc that is defined outside of the method, there is a 'LocalJumpError' when the Proc tries to explicitly return."
puts ''
puts "Group 3 Observations:"
puts "With a lambda, if an explicit return is put in the block, it will still pass control back to the method."
puts ''
puts "Group 4 Observations:"
puts "When a lambda is defined outside of a method, passed into a method, then called within the method with an explicit return, it will still run as normal."
puts ''
puts "Group 5 Observations:"
puts "A block passed into a method will throw an exception if it tried to explicitely return."
puts ''
puts "Analysis of difference between blocks, procs and lambdas:"
puts "1. When a Proc or block are passed into a method with an explicit return, it throws a 'LocalJumpError' exception\n" \
  "2. When a lambda is passed into a method with an explicit return, it runs without error\n" \
  "3. When a Proc is defined within a method and is called with an explicit return inside of the Proc, it will not pass control back to the method, however a lambda will."