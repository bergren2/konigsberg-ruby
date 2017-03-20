class Problem10
  def self.solve()
    primes = {}

    limit = 2000000
    bound = (limit**0.5).floor

    # init primes list
    for n in 5...limit
      print "\rInitializing primes list with #{n}..."
      primes[n] = false
    end
    puts " Done."

    # Sieve of Atkin
    for i in 1..bound
      for j in 1..bound
        print "\rChecking (#{i}, #{j})..."
        n = 4 * i**2 + j**2
        if n <= limit and (n % 12 == 1 or n % 12 == 5)
          primes[n] = not(primes[n])
        end

        n = 3 * i**2 + j**2
        if n <= limit and n % 12 == 7
          primes[n] = not(primes[n])
        end

        n = 3 * i**2 - j**2
        if i > j and n <= limit and n % 12 == 11
          primes[n] = not(primes[n])
        end
      end
    end
    puts " Done."

    for n in 5..bound
      print "\rEliminating potential composite #{n}..."
      if primes[n]
        n_squared = n**2
        m = n_squared
        while m < limit
          primes[m] = false
          m += n_squared
        end
      end
    end
    puts " Done."

    # sum primes
    sum = 2 + 3
    primes.each_pair do |key, value|
      if value
        sum += key
      end
    end

    puts sum
  end
end
