require 'minitest/autorun'

# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.

class NoExperienceError < StandardError; end

class Employee
  attr_reader :experience
  
  def initialize(name, exp)
    @name = name
    @experience = exp
  end
  
  def hire
    experience ? 'Hire' : raise(NoExperienceError)
  end
end

class ExceptionTest < Minitest::Test
  def setup
    @employee = Employee.new('John', false)
  end
  
  def test_hire
    assert_raises(NoExperienceError) do
      @employee.hire
    end
  end
end