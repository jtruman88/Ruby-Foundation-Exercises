require 'minitest/autorun'

# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

class IncludeObjectTest < Minitest::Test
  def setup
    @list = ['xyz', 2, 3]
  end
  
  def test_object_includes
    assert_includes(@list, 'xyz')
  end
end