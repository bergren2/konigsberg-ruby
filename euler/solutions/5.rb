require "euler_solvable"

class Problem5
  include EulerSolvable

  def initialize limit
    @limit = limit
  end

  def solution
    primes = []
    lcm_factors = {}

    # populate primes
    for n in 2..@limit
      is_prime = true # default

      for i in 2..(n**0.5).floor
        if n % i == 0
          for p in primes
            is_prime = false if i % p == 0
          end
        end
      end

      primes << n if is_prime
    end

    # find LCM factors
    for n in 1..@limit
      x = n # working variable

      for p in primes
        e = 0 # exponent init

        while x % p == 0
          x = x / p
          e += 1
        end

        lcm_factors[p] = e if lcm_factors[p].nil? or lcm_factors[p] < e
      end
    end

    answer = 1
    lcm_factors.each do |key, value|
      answer = answer * key**value
    end

    answer
  end
end
