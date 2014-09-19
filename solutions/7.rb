primes = []
n = 2 # init

while primes.size < 10001
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
    print "Primes found: #{primes.size}\r"
  end

  n += 1
end

puts "\nAnswer: #{primes[-1]}"
