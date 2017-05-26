class Problem11
  include EulerSolvable

  def initialize()
    #
  end

  def solution
    max = 0
    length = 4
    n_array = []

    File.open(resource_path("prob11.txt"), "r") do |file|
      file.each_line do |line|
        n_array << []
        line.split.each do |c|
          n_array[-1] << c.to_i
        end
      end
    end

    for i in 1...n_array.size
      for j in 1...n_array.size
        products = Array.new(4, 1)

        # horizontal
        if i + length <= n_array.size
          for k in 0...length
            products[0] *= n_array[i + k][j]
          end
        end

        # vertical
        if j + length <= n_array.size
          for k in 0...length
            products[1] *= n_array[i][j + k]
          end
        end

        # diagonal downright
        if i + length <= n_array.size and j + length <= n_array.size
          for k in 0...length
            products[2] *= n_array[i + k][j + k]
          end
        end

        # diagonal downleft
        if i - length >= -1 and j + length <= n_array.size
          for k in 0...length
            products[3] *= n_array[i - k][j + k]
          end
        end

        max = products.max if products.max > max
      end
    end

    max
  end
end
