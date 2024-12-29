# typed: true
module ValidateSubsequence
  def self.call(array, sequence)
    sequence_index = 0

    array.each do |num|
      sequence_index += 1 if sequence[sequence_index] == num
      return true if sequence_index == sequence.size
    end

    return false
  end
end
