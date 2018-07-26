class CollatzNode
  attr_reader :val

  def initialize val
    @val = val
  end

  def next
    if @val.even?
      return CollatzNode.new(@val / 2)
    else
      return CollatzNode.new(3 * @val + 1)
    end
  end

  def predecessors
    nodes = []
    nodes << CollatzNode.new((@val - 1) / 3) if (@val - 1) % 3 == 0
    nodes << CollatzNode.new(@val * 2)
  end

  def to_s
    @val.to_s
  end

  def == other
    self.val == other.val
  end
end
