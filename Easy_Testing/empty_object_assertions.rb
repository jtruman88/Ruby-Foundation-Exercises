require 'minitest/autorun'

# Write a minitest assertion that will fail if the Array list is not empty.

class EmptyObjectTest < Minitest::Test
  def setup
    @list = []
  end
  
  def test_empty_object
    assert_empty(@list)
  end
end