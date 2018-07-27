# rubocop:disable Naming/UncommunicativeMethodParamName
class CartesianCoordinateSystem
  def initialize
    @hash = {}
    @last_x = nil
    @last_y = nil
  end

  def [](x, y)
    @hash[x][y] if @hash.key?(x) && @hash[x].key?(y)
  end

  def []=(x, y, val)
    @hash[x] = {} unless @hash.key? x
    @hash[x][y] = val

    @last_x = x
    @last_y = y
  end

  def adjacent(x, y)
    [
      self[x + 1, y],
      self[x - 1, y],
      self[x, y + 1],
      self[x, y - 1]
    ].compact
  end

  def surrounding(x, y)
    adjacent(x, y) + [
      self[x + 1, y + 1],
      self[x + 1, y - 1],
      self[x - 1, y + 1],
      self[x - 1, y - 1]
    ].compact
  end

  def last
    self[@last_x, @last_y]
  end
end
# rubocop:enable Naming/UncommunicativeMethodParamName
