require 'minitest/autorun'

# Write a unit test that will fail if 'xyz' is one of the elements in the Array list:

class RefuteTest < Minitest::Test
  def setup
    @list = [1, 2, 3]
  end
  
  def test_list
    refute_includes(@list, 'xyz')
  end
end