sum_of_squares = 0
the_sum = 0

(1..100).each do |i|
  sum_of_squares += i*i
  the_sum += i
end

puts the_sum * the_sum - sum_of_squares
