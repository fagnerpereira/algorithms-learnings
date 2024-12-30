# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  if m.zero? || n.zero?
    nums1.replace(nums2) if n.positive?
    return nums1
  end

  k = nums1.size - 1
  i = m - 1
  j = n - 1

  while i >= 0 && j >= 0
    num1, num2 = nums1[i], nums2[j]

    if num1 > num2
      nums1[k] = num1
      i -= 1
    else
      nums1[k] = num2
      j -= 1
    end

    return nums1 if j.negative?

    k -= 1
  end

  nums1[..k] = nums2[..k]
  nums1
end

# p merge([0], 0, [1], 1)
p merge([1, 2, 3, 7, 0, 0, 0], 4, [2, 5, 6], 3)
# p merge([1], 1, [], 0)
# p merge([2, 0], 1, [1], 1)
# p merge([4, 5, 6, 0, 0, 0], 3, [1, 2, 3], 3)
# p merge([4, 0, 0, 0, 0, 0], 1, [1, 2, 3, 5, 6], 5)
# p merge([-1, 1, 0, 0, 0, 0, 0, 0], 2, [-1, 0, 1, 1, 2, 3], 6)
