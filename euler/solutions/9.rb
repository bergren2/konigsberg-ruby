require "euler_solvable"

class Problem9
  include EulerSolvable

  def initialize(sum)
    @sum = sum
  end

  def solution
    n = @sum

    (1...n).each do |a|
      (a + 1...n).each do |b|
        (b + 1...n).each do |c|
          return a * b * c if a * a + b * b == c * c && a + b + c == n
        end
      end
    end
  end
end
