require "euler_solvable"

class Problem6
  include EulerSolvable

  def initialize limit
    @limit = limit
  end

  def solution
    sum_of_squares = 0
    the_sum = 0

    (1..@limit).each do |i|
      sum_of_squares += i*i
      the_sum += i
    end

    the_sum * the_sum - sum_of_squares
  end
end
