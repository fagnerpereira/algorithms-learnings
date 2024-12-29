def merge_sort(arr)
  # If array has only one element, it's already sorted!
  return arr if arr.length <= 1

  # Find the middle point
  middle = arr.length / 2

  # Recursively sort each half
  left = merge_sort(arr[...middle])
  right = merge_sort(arr[middle..])

  # Merge the sorted halves
  merge(left, right)
end

def merge(left, right)
  li = ri = 0
  sorted_result = []

  while li < left.size && ri < right.size
    left_value, right_value = left[li], right[ri]

    if left_value > right_value
      sorted_result << right_value
      ri += 1
    else
      sorted_result << left_value
      li += 1
    end
  end

  sorted_result + left[li..] + right[ri..]
end

# Let's test with both sorted and unsorted arrays of the same size
# sorted_array = [1, 2, 3, 4, 5, 6, 7, 8]
unsorted_array = [8, 5, 2, 9, 5, 6, 3]

puts "Testing with unsorted array:"
puts "============================"
p merge_sort(unsorted_array)
