require 'minitest/autorun'

# Write a minitest assertion that will fail if the class of value is not Numeric or one of Numeric's subclasses (e.g., Integer, Fixnum, Float, etc).

class KindTest < Minitest::Test
  def setup
    @value = 3
  end
  
  def test_numeric_kind
    assert_kind_of(Numeric, @value)
  end
end