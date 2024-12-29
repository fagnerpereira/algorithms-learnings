# typed: true
module SelectionSort
  def self.run(array)
    output = []

    array.each do |n|
      biggest = find_biggest(array)
      output.push(biggest[0])
      array.delete_at(biggest[1])
    end

    output
  end

  def self.find_biggest(array)
    biggest = [array[0], 0]

    array.each_with_index do |n, i|
      if n > biggest[1]
        biggest = [n, i]
      end
    end

    biggest
  end
end

p SelectionSort.run([3, 4, 1, 3, 6, 5, 0])
