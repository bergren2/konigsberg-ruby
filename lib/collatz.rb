class CollatzNode
  attr_reader :val

  def initialize(val)
    @val = val
  end

  def next
    return CollatzNode.new(@val / 2) if @val.even?

    CollatzNode.new(3 * @val + 1)
  end

  def predecessors
    nodes = []
    nodes << CollatzNode.new((@val - 1) / 3) if ((@val - 1) % 3).zero?
    nodes << CollatzNode.new(@val * 2)
  end

  def to_s
    val.to_s
  end

  def ==(other)
    val == other.val
  end
end
