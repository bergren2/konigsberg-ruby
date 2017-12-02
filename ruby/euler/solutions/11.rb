class Problem11
  include EulerSolvable

  def initialize
    @length = 4
    @n_array = []

    File.open(resource_path("prob11.txt"), "r") do |file|
      file.each_line do |line|
        @n_array << []
        line.split.each do |c|
          @n_array[-1] << c.to_i
        end
      end
    end
  end

  def solution
    max = 0

    for i in 1...@n_array.size
      for j in 1...@n_array.size
        products = Array.new(4, 1)

        products[0] = product(i, j, :horizontal)
        products[1] = product(i, j, :vertical)
        products[2] = product(i, j, :slash)
        products[3] = product(i, j, :backslash)

        max = products.max if products.max > max
      end
    end

    max
  end

  private
  def product i, j, direction
    p = 1

    case direction
    when :horizontal
      if i + @length <= @n_array.size
        for k in 0...@length
            p *= @n_array[i + k][j]
        end
      end
    when :vertical
      if j + @length <= @n_array.size
        for k in 0...@length
          p *= @n_array[i][j + k]
        end
      end
    when :slash
      if i - @length >= -1 and j + @length <= @n_array.size
        for k in 0...@length
          p *= @n_array[i - k][j + k]
        end
      end
    when :backslash
      if i + @length <= @n_array.size and j + @length <= @n_array.size
        for k in 0...@length
          p *= @n_array[i + k][j + k]
        end
      end
    end

    p
  end
end
