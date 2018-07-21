require "euler_solvable"

class Problem8
  include EulerSolvable

  def initialize digits
    @digits = digits
  end

  def solution
    n_array = []
    max = 0

    File.open(resource_path("prob8.txt"), "r") do |file|
      file.each_line do |line|
        line.chomp.each_char do |c|
          n_array << c.to_i
        end
      end
    end

    for i in 1...n_array.size
      product = 1

      for j in 0...@digits
        product *= n_array[i + j] unless i + j >= n_array.size
      end

      if product > max
        max = product
      end
    end

    max
  end
end
