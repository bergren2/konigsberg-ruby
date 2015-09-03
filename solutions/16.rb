require "cmath"

n = 2**1000

number_of_digits = CMath.log10 n

sum = 0

(0..number_of_digits).each do |i|
  sum += n / 10**i % 10
end

puts sum
