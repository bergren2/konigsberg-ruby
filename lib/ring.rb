class Ring
  include Enumerable

  def initialize size_or_enumerable
    if size_or_enumerable.kind_of? Enumerable
      @list = size_or_enumerable.to_a
    else
      @list = (0...size_or_enumerable).to_a
    end
    @start = 0
  end

  def [](index)
    @list[(@start + index) % @list.size]
  end

  def []=(index, value)
    @list[(@start + index) % @list.size] = value
  end

  def slice start, length
    dlist = @list * 2
    dlist.slice(start, length)
  end

  def size
    @list.size
  end

  def to_a
    @list
  end

  def to_s
    @list.to_s
  end
end
