class Problem1
  def self.solve(n)
    sum = 0

    (1...n).each do |i|
      sum += i if i % 3 == 0 or i % 5 == 0
    end

    sum
  end
end
