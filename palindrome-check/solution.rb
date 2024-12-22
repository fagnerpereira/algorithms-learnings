require "benchmark"
require "memory_profiler"

# O(n)T | O(n)S
def is_palindrome1(string)
  string == string.reverse
end

# O(n)T | O(1)
def is_palindrome2(string)
  li = 0
  ri = string.size - 1

  while li < ri
    return false if string[li] != string[ri]

    li += 1
    ri -= 1
  end

  true
end

def is_palindrome3(string)
  # p string
  return true if string.empty?
  return false if string[0] != string[-1]

  is_palindrome3(string[1...-1])
end

# Test cases with different string lengths
test_cases = {
  "tiny" => "a" * 10,
  "small" => "a" * 100,
  "medium" => "a" * 1000,
  "large" => "a" * 10000
  # "huge" => "a" * 100000
}

puts "=== Time Benchmark ==="
Benchmark.bm(20) do |x|
  test_cases.each do |name, str|
    puts "\nTesting with #{name} string (length: #{str.length})"
    x.report("is_palindrome1:") { 100.times { is_palindrome1(str) } }
    x.report("is_palindrome2:") { 100.times { is_palindrome2(str) } }
    x.report("is_palindrome3:") { 100.times { is_palindrome3(str) } }
  end
end

puts "\n=== Memory Benchmark ==="
test_cases.each do |name, str|
  puts "\nTesting with #{name} string (length: #{str.length})"

  puts "\nis_palindrome1:"
  report1 = MemoryProfiler.report do
    is_palindrome1(str)
  end

  puts "\nis_palindrome2:"
  report2 = MemoryProfiler.report do
    is_palindrome2(str)
  end

  puts "\nis_palindrome3:"
  report3 = MemoryProfiler.report do
    is_palindrome3(str)
  end

  puts "Method 1 allocated: #{report1.total_allocated_memsize} bytes"
  puts "Method 2 allocated: #{report2.total_allocated_memsize} bytes"
  puts "Method 3 allocated: #{report3.total_allocated_memsize} bytes"
end

# === Time Benchmark ===
#                            user     system      total        real

# Testing with tiny string (length: 10)
# is_palindrome1:        0.000011   0.000011   0.000022 (  0.000016)
# is_palindrome2:        0.000051   0.000051   0.000102 (  0.000091)

# Testing with small string (length: 100)
# is_palindrome1:        0.000025   0.000025   0.000050 (  0.000045)
# is_palindrome2:        0.001432   0.001432   0.002864 (  0.002630)

# Testing with medium string (length: 1000)
# is_palindrome1:        0.000041   0.000041   0.000082 (  0.000074)
# is_palindrome2:        0.012009   0.000890   0.012899 (  0.011829)

# Testing with large string (length: 10000)
# is_palindrome1:        0.001020   0.000000   0.001020 (  0.000949)
# is_palindrome2:        0.110828   0.000000   0.110828 (  0.101660)

# Testing with huge string (length: 100000)
# is_palindrome1:        0.006332   0.000000   0.006332 (  0.005812)
# is_palindrome2:        1.066761   0.000000   1.066761 (  0.977879)

# === Memory Benchmark ===

# Testing with tiny string (length: 10)

# is_palindrome1:

# is_palindrome2:
# Method 1 allocated: 40 bytes
# Method 2 allocated: 400 bytes
# Memory difference: -360 bytes

# Testing with small string (length: 100)

# is_palindrome1:

# is_palindrome2:
# Method 1 allocated: 160 bytes
# Method 2 allocated: 4000 bytes
# Memory difference: -3840 bytes

# Testing with medium string (length: 1000)

# is_palindrome1:

# is_palindrome2:
# Method 1 allocated: 1041 bytes
# Method 2 allocated: 40000 bytes
# Memory difference: -38959 bytes

# Testing with large string (length: 10000)

# is_palindrome1:

# is_palindrome2:
# Method 1 allocated: 10041 bytes
# Method 2 allocated: 400000 bytes
# Memory difference: -389959 bytes

# Testing with huge string (length: 100000)

# is_palindrome1:

# is_palindrome2:
# Method 1 allocated: 100041 bytes
# Method 2 allocated: 4000000 bytes
# Memory difference: -3899959 bytes
