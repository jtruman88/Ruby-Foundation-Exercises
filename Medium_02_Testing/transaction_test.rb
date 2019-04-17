require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < Minitest::Test
  attr_accessor :trans
  
  def setup
    @trans = Transaction.new(10)
  end
  
  def test_prompt_for_payment
    input = StringIO.new('30\n')
    output = StringIO.new
    trans.prompt_for_payment(input: input, output: output)
    assert_equal(30, transaction.amount_paid)
  end
end

=begin
Explanations:

#6
The solution for this exercise involves using StringIO as a mock object. We need a way to simulate Kernel#gets and the method StringIO#gets allows us to do just that. In our test we can set the input as StringIO.new('30'). When we pass this to Transaction#prompt_for_payment and call input.gets.chomp we'll get back the String stored in our input object. This will return 30 and that will get assigned to @amount_paid.

Finally, for our assertion, we make sure that @amount_paid was set correctly. If it was set correctly, then our expected value of 30 should equal the value returned by the getter for @amount_paid

#7
First, we'll create a mock object to use in prompt_for_payment_test. output = StringIO.new Unlike when we created a mock object for input we don't have to set the String for our mock. We'll end up calling StringIO#puts on output and that is what will set the String value for our StringIO mock object. Second, we have to alter the Transaction#prompt_for_payment method to accept a mock of our output. This will work in a similar way to how we mocked the input. We add a new parameter to Transaction#prompt_for_payment that will allow us to pass in an output mock object. def prompt_for_payment(input: $stdin, output: $stdout) Then, we use this output mock object within our method, we call StringIO#puts and the string passed to puts gets stored within the StringIO object. It isn't output to the user. Doing this should allow us to clean up our testing output that displays when running minitest.

=end
