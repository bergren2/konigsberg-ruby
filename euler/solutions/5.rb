require "euler_solvable"

class Problem5
  include EulerSolvable

  def initialize(limit)
    @limit = limit
  end

  def solution
    primes = []
    lcm_factors = {}

    # populate primes
    (2..@limit).each do |n|
      is_prime = true # default

      (2..(n**0.5).floor).each do |i|
        next unless (n % i).zero?
        primes.each do |p|
          is_prime = false if (i % p).zero?
        end
      end

      primes << n if is_prime
    end

    # find LCM factors
    (1..@limit).each do |n|
      x = n # working variable

      primes.each do |p|
        e = 0 # exponent init

        while (x % p).zero?
          x /= p
          e += 1
        end

        lcm_factors[p] = e if lcm_factors[p].nil? || lcm_factors[p] < e
      end
    end

    answer = 1
    lcm_factors.each do |key, value|
      answer *= key**value
    end

    answer
  end
end
