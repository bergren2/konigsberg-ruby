class Problem5
  def self.solve()
    primes = []
    lcm_factors = {}

    limit = 20

    # populate primes
    for n in 2..limit
      is_prime = true # default

      for i in 2..(n**0.5).floor
        if n % i == 0
          for p in primes
            if i % p == 0
              is_prime = false
            end
          end
        end
      end

      if is_prime
        primes << n
      end
    end

    # find LCM factors
    for n in 1..limit
      x = n # working variable

      for p in primes
        e = 0 # exponent init

        while x % p == 0
          x = x / p
          e += 1
        end

        if lcm_factors[p].nil? or lcm_factors[p] < e
          lcm_factors[p] = e
        end
      end
    end

    answer = 1
    lcm_factors.each do |key, value|
      answer = answer * key**value
    end

    puts answer
  end
end
