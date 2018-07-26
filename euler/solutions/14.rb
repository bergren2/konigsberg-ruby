require "euler_solvable"

class Problem14
  include EulerSolvable

  def initialize limit
    @limit = limit
  end

  def solution
    start = Node.new(@limit - 1)
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
        longest_chain_length = length
        longest_chain_start = i
      end
    end

    longest_chain_start
  end
end

class Node
  attr_reader :val

  def initialize val
    @val = val
  end

  def next
    if @val.even?
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
