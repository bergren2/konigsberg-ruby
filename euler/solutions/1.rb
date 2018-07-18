class Problem1
  include EulerSolvable

  def initialize n
    @n = n
  end

  def solution
    sum = 0

    (1...@n).each do |i|
      sum += i if i % 3 == 0 or i % 5 == 0
    end

    sum
  end
end
