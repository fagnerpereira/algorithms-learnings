# typed: true
require "debug"

def three_number_sum(array, target_sum)
  array.sort!
  output = []

  # O(n^3) T
  # array.each_with_index do |n1, i|
  #   array.each_with_index do |n2, j|
  #     next if j <= i

  #     array.each_with_index do |n3, k|
  #       next if k <= i || k <= j

  #       if [n1, n2, n3].sum == target_sum
  #         output << [n1, n2, n3]
  #       end
  #     end
  #   end
  # end

  # O(n^2) T | O(n) S
  array.each_with_index do |current, i|
    left = i + 1
    right = array.size - 1

    break if current > target_sum

    while left < right
      triplets = [current, array[left], array[right]]

      if triplets.sum > target_sum
        right -= 1
      elsif triplets.sum < target_sum
        left += 1
      else
        output.push(triplets)
        left += 1
        right -= 1
      end
    end
  end

  output
end

# result: [[-8, 2, 6], [-8, 3, 5], [-6, 1, 5]]
p three_number_sum([12, 3, 1, 2, -6, 5, -8, 6], 0)
