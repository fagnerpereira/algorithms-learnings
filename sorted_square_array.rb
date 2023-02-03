module SortedSquareArray
  def self.call(array)
    sorted_square_array = Array.new(array.size)
    sorted_square_index = sorted_square_array.size - 1
    left = 0
    right = array.size - 1

    while left <= right do
      left_square = array[left] * array[left]
      right_square = array[right] * array[right]

      if left_square > right_square
        sorted_square_array[sorted_square_index] = left_square
        left += 1
      else
        sorted_square_array[sorted_square_index] = right_square
        right -= 1
      end
      sorted_square_index -= 1
    end
    sorted_square_array
  end
end
