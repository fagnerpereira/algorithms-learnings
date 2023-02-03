module NCR
  def self.compute(n, r)
    # c = n! / r! * (n - r)!
    factor(n) / (factor(r) * factor(n - r))
  end

  def self.factor(number)
    (1..number).inject(&:*) || 1
  end
end
