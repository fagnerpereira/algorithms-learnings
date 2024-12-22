require "debug"

class SheetCellsTranslator
  ALPHABET_FIRST = "A".ord
  ALPHABET_LAST = "Z".ord

  def translate_number(number)
    result = ""
    current_result = number

    while current_result > 0
      current_result -= 1
      current_result, remainder = current_result.divmod(alphabet_size)
      current_char = (ALPHABET_FIRST + remainder).chr
      result = current_char + result
    end

    result
  end

  def translate_chars(chars)
    result = 0

    chars.each_byte.with_index do |byte, i|
      result += (byte - ALPHABET_FIRST + 1) * alphabet_size**(chars.size - 1 - i)
    end

    result
  end

  private

  def alphabet_size
    ALPHABET_LAST - ALPHABET_FIRST + 1
  end
end

t = SheetCellsTranslator.new
p "\n"
# p t.translate_number(705) # -> AAC
p t.translate_chars("YZ")
# p t.translate_number(51) # -> AY
# p t.translate_number(52) # -> AZ
# p t.translate_number(80) # -> CB
# p t.translate_number(676) # -> YZ
# p t.translate_number(702) # -> ZZ
# p t.translate_number(705) # -> AAC
p ""
