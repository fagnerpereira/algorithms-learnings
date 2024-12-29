# typed: false
require 'minitest/autorun'
require './factorial'

class TestFactorial < Minitest::Test
  def test_calculate_recursively
    assert_equal 3_628_800, Factorial.calculate_recursively(10)
    assert_equal 1, Factorial.calculate_recursively(1)
    assert_equal 1, Factorial.calculate_recursively(0)
  end

  def test_calculate_inject
    assert_equal 3_628_800, Factorial.calculate_inject(10)
    assert_equal 1, Factorial.calculate_inject(1)
    assert_equal 1, Factorial.calculate_inject(0)
  end

  def test_calculate_while
    assert_equal 3_628_800, Factorial.calculate_while(10)
    assert_equal 1, Factorial.calculate_while(1)
    assert_equal 1, Factorial.calculate_while(0)
  end

  def test_calculate_for
    assert_equal 3_628_800, Factorial.calculate_for(10)
    assert_equal 1, Factorial.calculate_for(1)
    assert_equal 1, Factorial.calculate_for(0)
  end
end
