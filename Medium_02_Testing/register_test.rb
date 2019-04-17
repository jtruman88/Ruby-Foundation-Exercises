require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  attr_accessor :trans, :reg
  
  def setup
    @trans = Transaction.new(10)
    @reg = CashRegister.new(100)
    @paid = trans.amount_paid = 20
  end
  
  def test_accept_money
    total_before = reg.total_money
    reg.accept_money(trans)
    
    assert_equal(110, reg.total_money)
  end
  
  def test_change
    change = reg.change(trans)
    
    assert_equal(10, change)
  end
  
  def test_give_receipt
    message = "You've paid $20 and got $10 in change.\n"
    
    assert_output(message) { reg.give_receipt(trans) }
  end
end

=begin

#1
These will be the classes you will be testing throughout the remaining exercises. You'll want to create two new files, one for each of the two classes listed below. You'll need this code for the remaining exercises of this set.

#2
Let's start things from the ground up. We want to make a simple test suite for our CashRegister class. Setup the initial testing file. You don't have to have any tests in your test file. For this exercise, write everything you would need to start testing CashRegister, excluding the tests themselves (necessary requires, test class, etc.).

#3
We now have the foundation of our CashRegister test class set up. Let's start testing! We'll start with the CashRegister#accept_money method. Write a test for the #accept_money method.

#4
Write a test for the method, CashRegister#change.

#5
Write a test for method CashRegister#give_receipt that ensures it displays a valid receipt.

#6 - in transaction_test.rb file
Write a test that verifies that Transaction#prompt_for_payment sets the amount_paid correctly. We've changed the transaction class a bit to make testing this a bit easier. The Transaction#prompt_for_payment now reads as:

#7 - In transaction_test.rb file
You may have noticed something when running the test for the previous exercise. And that is that our minitest output wasn't that clean. We have some residual output from the Transaction#prompt_for_payment method.

Run options: --seed 52842

# Running:

You owe $30.
How much are you paying?
.

Finished in 0.001783s, 560.7402 runs/s, 560.7402 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips

Transaction#prompt_for_payment has a call to Kernel#puts and that output is showing up when we run our test. Your task for this exercise is to make it so that we have "clean" output when running this test.

#8

=end