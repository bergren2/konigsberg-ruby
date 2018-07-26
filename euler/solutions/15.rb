require "euler_solvable"

class Problem15
  include EulerSolvable

  def initialize(size)
    # dimension of square grid
    @size = size
  end

  def solution
    grid(@size)
  end

  # here we form a basis of vertices that uses that diagonal
  # opposite of the diagonal formed by the start and finish vertices
  # and notice a binomial coefficient pattern for routes to and from
  # members of this basis.
  def grid(number)
    v = number + 1 # number of vertices
    coefficient = 1
    routes = 0
    1.upto(v) do |i|
      routes += coefficient * coefficient
      coefficient = coefficient * (v - i) / i
    end
    routes
  end
end
