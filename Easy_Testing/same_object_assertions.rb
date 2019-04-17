require 'minitest/autorun'

# Write a unit test that will fail if list and the return value of list.process are different objects.

class Array
  def process
    puts "processing"
    self
  end
end

class TestSame < Minitest::Test
  def setup
    @list = []
  end
  
  def test_process
    assert_same(@list, @list.process)
  end
end