require 'minitest/autorun'

# Write a minitest assertion that will fail if the value.odd? is not true.

class ValueTest < Minitest::Test
  def test_value_odd
    value = 3
    assert(value.odd?, "Value is not odd")
  end
end