require "./lib/prime_number_sieves.rb"

class Problem10
  include EulerSolvable

  def initialize limit
    @limit = limit
  end

  def solution
    sieve = SieveOfAtkin.new @limit
    primes = sieve.run
    primes.inject :+
  end
end
