# typed: false
require 'minitest/autorun'
require 'minitest/benchmark'
require './two_number_sum'

class TestTwoNumberSum < Minitest::Test
  #def bench_my_algorithm
  #  assert_performance_linear 0.9999 do |n| # n is a range value
  #    TwoNumberSum.call(n)
  #  end
  #end

  def test_call
    assert_equal(
      [-1, 11],
      TwoNumberSum.call([3, 5, -4, 8, 11, 1, -1, 6], 10)
    )
    assert_equal(
      [4, 6],
      TwoNumberSum.call([4, 6], 10)
    )
    assert_equal(
      [1, 4],
      TwoNumberSum.call([4, 6, 1], 5)
    )
    assert_equal(
      [-3, 6],
      TwoNumberSum.call([4, 6, 1, -3], 3)
    )
    assert_equal(
      [8, 9],
      TwoNumberSum.call([1, 2, 3, 4, 5, 6, 7, 8, 9], 17)
    )
    assert_equal(
      [3, 15],
      TwoNumberSum.call([1, 2, 3, 4, 5, 6, 7, 8, 9, 15], 18)
    )
    assert_equal(
      [-5, 0],
      TwoNumberSum.call([-7, -5, -3, -1, 0, 1, 3, 5, 7], -5)
    )
  end
end
