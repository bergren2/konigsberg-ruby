class Problem2 < EulerProblem
  def initialize limit
    @limit = limit
  end

  def solution
    a = 0
    b = 1
    sum = 0

    while a + b < @limit do
      c = a + b
      a = b
      b = c

      sum += c if c % 2 == 0
    end

    sum
  end
end
