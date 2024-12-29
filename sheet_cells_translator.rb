# typed: false
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
# p t.translate_number(705) # -> AAC
# p t.translate_chars("YZ")
p t.translate_chars("AA")
p t.translate_number(26)
# p t.translate_number(52) # -> AZ
# p t.translate_number(80) # -> CB
# p t.translate_number(676) # -> YZ
# p t.translate_number(702) # -> ZZ
# p t.translate_number(705) # -> AAC

class SheetCellsTranslator
  ALPHABET_FIRST = "A".ord

  def translate_number(number)
    return "" if number <= 0
    dividend, remainder = (number - 1).divmod(26)
    translate_number(dividend) + (ALPHABET_FIRST + remainder).chr
  end

  def translate_chars(chars)
    chars.each_char.reduce(0) do |result, char|
      result * 26 + (char.ord - ALPHABET_FIRST + 1)
    end
  end
end

class SheetCellsTranslator
  COLUMN_CHARS = ("A".."Z").to_a
  CHAR_TO_NUM = COLUMN_CHARS.each_with_index.to_h { |c, i| [c, i + 1] }

  def translate_number(number)
    return "" if number <= 0
    dividend, remainder = (number - 1).divmod(26)
    translate_number(dividend) + COLUMN_CHARS[remainder]
  end

  def translate_chars(chars)
    chars.each_char.reduce(0) { |result, char| result * 26 + CHAR_TO_NUM[char] }
  end
end

class SheetCellsTranslator
  ALPHABET_FIRST = "A".ord

  def translate_number(number)
    return "" if number <= 0
    length = Math.log(number * 26, 26).ceil
    digits = length.times.map do |i|
      power = length - i - 1
      digit_value = (number - 1) / (26**power) % 26
      (ALPHABET_FIRST + digit_value).chr
    end
    digits.join
  end
end
