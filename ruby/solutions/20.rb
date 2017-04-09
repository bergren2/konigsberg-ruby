class Problem20 < EulerProblem
  def initialize(n)
    @n = n
  end

  def solution
    number = (1..@n).inject(:*) || 1

    sum = 0
    while number > 10
      sum += number % 10
      number = number / 10
    end

    sum += number
  end
end
