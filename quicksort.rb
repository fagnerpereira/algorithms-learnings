# typed: true
module Quicksort
  def self.sort(array)
    return array if array.size < 2
    pivot = array[0]
    left = []
    right = []

    array[1..].each do |n|
      if n < pivot
        left << n
      else
        right << n
      end
    end

    sort(left) + [pivot] + sort(right)
  end
end

# p Quicksort.run([3, 4, 1, 3, 6, 5, 0])
p Quicksort.sort([3, 2, 5])
