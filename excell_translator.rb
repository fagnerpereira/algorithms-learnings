# typed: true

module ExcellTranslator
  ALPHABET = ("A".."Z").to_a

  def self.translate(chars)
    return if chars.empty?

    return (chars.ord - ALPHABET[0].ord) if chars.size == 1

    result = 0
    chars.each_byte.with_index do |byte, i|
      power = (chars.size - 1 - i)
      result += (byte - 65 + 1) * 26 ** power
    end

    result - 1
  end
end

# p ExcellTranslator.translate("Z")
p ExcellTranslator.translate("AA")
p ExcellTranslator.translate("AB")
p ExcellTranslator.translate("AC")
p ExcellTranslator.translate("AAA")
