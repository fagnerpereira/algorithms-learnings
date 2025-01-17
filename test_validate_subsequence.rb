# typed: false
require 'minitest/autorun'
require './validate_subsequence'

class TestValidateSubsequence < Minitest::Test
  def test_call
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, 10]
      )
    )

    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 25, 6, -1, 8, 10]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 6, -1, 8, 10]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [22, 25, 6]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, 10]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 10]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, -1, 8, 10]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [25]
      )
    )
    assert_equal(
      true,
      ValidateSubsequence.call(
        [1, 1, 1, 1, 1],
        [1, 1, 1]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 25, 6, -1, 8, 10, 12]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [4, 5, 1, 22, 25, 6, -1, 8, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 23, 6, -1, 8, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 22, 25, 6, -1, 8, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 22, 6, -1, 8, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, -1]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, -1, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, -2]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [26]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 25, 22, 6, -1, 8, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 26, 22, 8]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [1, 1, 6, 1],
        [1, 1, 1, 6]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, 10, 11, 11, 11, 11]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [5, 1, 22, 25, 6, -1, 8, 10, 10]
      )
    )
    assert_equal(
      false,
      ValidateSubsequence.call(
        [5, 1, 22, 25, 6, -1, 8, 10],
        [1, 6, -1, 5]
        )
      )
  end
end
