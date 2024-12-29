# typed: false
require "debug"

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  return intervals if intervals.size < 2

  merged = []
  intervals.sort!

  intervals.each do |interval|
    prev_interval = merged[-1]

    if merged.empty? || prev_interval[-1] < interval[0]
      merged << interval
    else
      prev_interval[-1] = [prev_interval[-1], interval[-1]].max
    end
  end

  merged
end

# output: [[1,6],[8,10],[15,18]]
# p merge([[1, 3], [2, 6], [8, 10], [15, 18]])
# p merge([[1, 3]])
# p merge([[1, 4], [5, 6]])
# p merge([[1, 4], [2, 3]])
