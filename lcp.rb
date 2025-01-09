def lcp(strings)
  prefixes = Hash.new { |k, v| k[v] = 0 }

  strings.each do |string|
    prefix_size = 0

    while prefix_size < string.size
      prefix = string[..prefix_size]
      prefixes[prefix] += 1
      prefix_size += 1
    end
  end
end

p lcp(["somehow", "somewhat", "something", "some"])
