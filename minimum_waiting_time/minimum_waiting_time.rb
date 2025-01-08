def minimum_waiting_time(queries)
  queries.sort!
  total_waiting = 0
  queries.each_with_index do |n, i|
    queries_left = queries.size - (i + 1)
    total_waiting += n * queries_left
  end
end

p minimum_waiting_time([3, 2, 1, 2, 6])
