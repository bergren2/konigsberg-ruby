class CartesianCoordinateSystem
  def initialize
    @hash = {}
    @last_x = nil
    @last_y = nil
  end

  def [](x, y)
    if @hash.key? [x, y]
      @hash[[x, y]]
    else
      nil
    end
  end

  def []=(x, y, val)
    @hash[[x, y]] = val

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
    self[@last_x, @last_y]
  end

  def values
    @hash.values
  end
end
