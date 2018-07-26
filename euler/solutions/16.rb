require "euler_solvable"
require "cmath"

class Problem16
  include EulerSolvable

  def initialize(exponent)
    @exponent = exponent
  end

  def solution
    n = 2**@exponent

    number_of_digits = CMath.log10 n

    sum = 0

    (0..number_of_digits).each do |i|
      sum += n / 10**i % 10
    end

    sum
  end
end
