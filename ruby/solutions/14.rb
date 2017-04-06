class Problem14
  def self.solve()
    start = Node.new 999999
    longest_chain_start = start.val
    longest_chain_length = 1

    # only need to check half a million
    start.val.downto(start.val / 2) do |i|
      # generate chain
      node = Node.new i
      length = 1
      while (node.val != 1) do
        length += 1
        node = node.next
      end

      # see if chain is new longest
      if length > longest_chain_length
        print "New longest chain starts with #{i} and is #{length} long!\n"
        longest_chain_length = length
        longest_chain_start = i
      end
    end
  end
end

class Node
  attr_reader :val

  def initialize val
    @val = val
  end

  def next
    if @val % 2 == 0
      return Node.new(@val / 2)
    else
      return Node.new(3 * @val + 1)
    end
  end

  def predecessors
    nodes = []
    nodes << Node.new((@val - 1) / 3) if (@val - 1) % 3 == 0
    nodes << Node.new(@val * 2)
  end

  def to_s
    @val.to_s
  end
end
