class Year2017Day3
  include AdventSolvable

  def initialize start, part
    @start = start
    @part = part
    @cart = Cart.new # pad so index lines up with number
  end

  # 36  35  34  33  32  31
  # 17  16  15  14  13  30
  # 18   5   4   3  12  29
  # 19   6   1   2  11  28
  # 20   7   8   9  10  27
  # 21  22  23  24  25  26
  def solution
    direction = :right # start moving right

    if @part == 1
      @cart[0][0] = 0 # seed
      x = 1
      y = 0

      (2..@start).each do |n|
        # if moving right and number above, use that number
        # if moving right and no number above, use number on left and move up
        case direction
        when :right
          # figure out value
          a = [@cart[x-1][y] + 1]
          a << @cart[x][y+1] + 1 unless @cart[x][y+1].nil?
          @cart[x][y] = a.min

          # where to next?
          if @cart[x][y+1]
            x += 1
          else
            direction = :up
            y += 1
          end
        when :up
          # figure out value
          a = [@cart[x][y-1] + 1]
          a << @cart[x-1][y] + 1 unless @cart[x-1][y].nil?
          @cart[x][y] = a.min

          # where to next?
          if @cart[x-1][y]
            y += 1
          else
            direction = :left
            x -= 1
          end
        when :left
          # figure out value
          a = [@cart[x+1][y] + 1]
          a << @cart[x][y-1] + 1 unless @cart[x][y-1].nil?
          @cart[x][y] = a.min

          # where to next?
          if @cart[x][y-1]
            x -= 1
          else
            direction = :down
            y -= 1
          end
        when :down
          # figure out value
          a = [@cart[x][y+1] + 1]
          a << @cart[x+1][y] + 1 unless @cart[x+1][y].nil?
          @cart[x][y] = a.min

          # where to next?
          if @cart[x+1][y]
            y -= 1
          else
            direction = :right
            x += 1
          end
        end
      end
    else # assume part 2
      @cart[0][0] = 1 # seed
    end

    @cart.last
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

  def [](x)
    if @cart.key? x
      @cart[x]
    else
      @cart[x] = Col.new(self, x)
    end
  end

  def last
    @cart[@last_x][@last_y] unless @last_x.nil? or @last_y.nil?
  end

  # omg
  def set_last x, y
    @last_x = x
    @last_y = y
  end

  class Col
    def initialize cart, x
      @cart = cart
      @x = x
      @col = {}
    end

    def [](y)
      if @col.key? y
        @col[y]
      else
        nil
      end
    end

    def []=(key, val)
      @col[key] = val

      @cart.set_last @x, key
    end
  end
end
