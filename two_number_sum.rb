# typed: true
class TwoNumberSum
  def self.call(array, target_sum)
    array.sort!
    left = 0
    right = array.size - 1

    loop do
      sum_result = array[left] + array[right]

      if sum_result == target_sum
        return [array[left], array[right]]
      else
        left += 1 if sum_result < target_sum
        right -= 1 if sum_result > target_sum
      end

      return [] if left > right
    end
  end
end
