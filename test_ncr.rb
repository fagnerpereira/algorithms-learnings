require 'minitest/autorun'
require './ncr'

class TestNCR < Minitest::Test
  def test_compute
    assert_equal 3, NCR.compute(3, 2)
    assert_equal 3, NCR.compute(3, 1)
    assert_equal 1225, NCR.compute(50, 2)
    assert_equal 27_405, NCR.compute(30, 4)
  end
end
