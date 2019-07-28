def get_total_x(a, b)
  # 1. find the LCM of all the integers of array A.
  lcm1 = a.lcm
  # 2. find the GCD of all the integers of array B.
  lcd1 = b.gcd
  # 3. Count the number of multiples of LCM that evenly divides the GCD.
  count = 0
  (1..100).each {|m|
    if (lcd1 % (lcm1 * m)) == 0
      count += 1
    end
  }
  count
end

class Array
  def lcm
    self.inject(&:lcm)
  end

  def gcd
    self.inject(&:gcd)
  end
end

a = [2, 4]
b = [16, 32, 96]

puts get_total_x(a, b)