class Problem25
  include EulerSolvable

  def initialize(n)
    @n = n
  end

  def solution
    a = 0
    b = 1
    index = 2
    limit = 10**(@n-1)

    while a + b < limit do
      c = a + b
      a = b
      b = c

      index += 1
    end

    index
  end
end
