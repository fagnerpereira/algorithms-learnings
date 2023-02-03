require 'minitest/autorun'
require './sorted_square_array.rb'

class TestSortedSquareArray < Minitest::Test
  def test_call
    assert_equal(
      [1, 4, 9, 16, 25],
      SortedSquareArray.call([-5, -4, -3, -2, -1])
    )

    assert_equal(
      [1, 4, 9, 16, 25],
      SortedSquareArray.call([1, 2, 3, 4, 5])
    )

    assert_equal(
      [0, 1, 1, 4, 4, 9, 9],
      SortedSquareArray.call([-3, -2, -1, 0, 1, 2, 3])
    )

    assert_equal(
      [0, 1, 1, 4, 4, 9, 25],
      SortedSquareArray.call([-3, -2, -1, 0, 1, 2, 5])
    )
  end
end
