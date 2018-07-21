require "euler_solvable"

class Problem7
  include EulerSolvable

  def initialize term
    @term = term
  end

  def solution
    primes = []
    n = 2 # init number to test

    while primes.size < @term
      is_prime = true # default
      for p in primes
        if n % p == 0
          is_prime = false
          break
        end
      end

      primes << n if is_prime

      n += 1
    end

    primes[-1]
  end
end
