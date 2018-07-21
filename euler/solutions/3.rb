require "euler_solvable"

class Problem3
  include EulerSolvable

  def initialize n
    @n = n
  end

  def solution
    prime_factors = []

    (2...Math.sqrt(@n).ceil).each do |i|
      if @n % i == 0
        is_prime = true # default

        prime_factors.each do |p|
          is_prime = false if i % p == 0
        end

        prime_factors.push i if is_prime
      end
    end

    prime_factors[-1]
  end
end
