class SieveOfAtkin
  def initialize limit
    @limit = limit
  end

  def run
    primes = { 2 => true, 3 => true }

    bound = (@limit**0.5).floor

    # init primes list
    for n in 5...@limit
      primes[n] = false
    end

    # Sieve of Atkin
    for i in 1..bound
      for j in 1..bound
        n = 4 * i**2 + j**2
        if n <= @limit and (n % 12 == 1 or n % 12 == 5)
          primes[n] = not(primes[n])
        end

        n = 3 * i**2 + j**2
        if n <= @limit and n % 12 == 7
          primes[n] = not(primes[n])
        end

        n = 3 * i**2 - j**2
        if i > j and n <= @limit and n % 12 == 11
          primes[n] = not(primes[n])
        end
      end
    end

    for n in 5..bound
      if primes[n]
        n_squared = n**2
        m = n_squared
        while m < @limit
          primes[m] = false
          m += n_squared
        end
      end
    end

    results = []
    primes.each_pair do |key, value|
      results << key if value
    end

    results
  end
end
