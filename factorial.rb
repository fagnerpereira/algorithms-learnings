# typed: true
module Factorial
  def self.calculate_recursively(number)
    return 1 if number == 0 || number == 1

    number * calculate_recursively(number - 1)
  end

  def self.calculate_inject(number)
    (1..number).inject(&:*) || 1
  end

  def self.calculate_while(number)
    return 1 if number == 0 || number == 1
    result = number
    while number > 1
      number -= 1
      result *= number
    end
    result
  end

  def self.calculate_for(number)
    return 1 if number == 0 || number == 1
    result = number
    for i in 1..number - 1 do
      result *= i
    end
    result
  end
end

p Factorial.calculate_recursively(5)
