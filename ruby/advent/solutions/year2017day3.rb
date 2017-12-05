class Year2017Day3
  include AdventSolvable

  def initialize input, part
    @input = input
    @part = part
    @cart = Cart.new # pad so index lines up with number

    @direction = :right # start moving right
    #
    # current position
    @x = 1
    @y = 0

    # seed
    if @part == 1
      @cart[0, 0] = 0
    else # assume part 2
      @cart[0, 0] = 1
    end
  end

  # 36  35  34  33  32  31
  # 17  16  15  14  13  30
  # 18   5   4   3  12  29
  # 19   6   1   2  11  28
  # 20   7   8   9  10  27
  # 21  22  23  24  25  26
  def solution
    if @part == 1
      (2..@input).each do |n|
        # figure out value
        a = @cart.adjacent(@x, @y)
        @cart[@x, @y] = a.min + 1

        update_direction
      end
    else # assume part 2
      while @cart.last <= @input
        a = @cart.surrounding(@x, @y)
        @cart[@x, @y] = a.inject(0, :+)

        update_direction
      end
    end

    @cart.last
  end

  def update_direction
    # where to next?
    case @direction
    when :right
      if @cart[@x, @y+1]
        @x += 1
      else
        @direction = :up
        @y += 1
      end
    when :up
      if @cart[@x-1, @y]
        @y += 1
      else
        @direction = :left
        @x -= 1
      end
    when :left
      if @cart[@x, @y-1]
        @x -= 1
      else
        @direction = :down
        @y -= 1
      end
    when :down
      if @cart[@x+1, @y]
        @y -= 1
      else
        @direction = :right
        @x += 1
      end
    end
  end
end

# c = Cart.new
# c[1][2] = 4

class Cart
  def initialize
    @cart = {}
    @last_x = nil
    @last_y = nil
  end

  def [](x, y)
    if @cart.key? x and @cart[x].key? y
      @cart[x][y]
    else
      nil
    end
  end

  def []=(x, y, val)
    @cart[x] = {} unless @cart.key? x
    @cart[x][y] = val

    @last_x = x
    @last_y = y
  end

  def adjacent(x, y)
    [
      self[x+1, y],
      self[x-1, y],
      self[x, y+1],
      self[x, y-1]
    ].compact
  end

  def surrounding(x, y)
    adjacent(x, y) + [
      self[x+1, y+1],
      self[x+1, y-1],
      self[x-1, y+1],
      self[x-1, y-1]
    ].compact
  end

  def last
    @cart[@last_x][@last_y] unless @last_x.nil? or @last_y.nil?
  end
end
