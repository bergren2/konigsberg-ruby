require "euler_solvable"
require "collatz"

class Problem14
  include EulerSolvable

  def initialize(limit)
    @limit = limit
  end

  def solution
    start = CollatzNode.new(@limit - 1)
    longest_chain_start = start.val
    longest_chain_length = 1

    # only need to check half a million
    start.val.downto(start.val / 2) do |i|
      # generate chain
      node = CollatzNode.new i
      length = 1
      while node.val != 1
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
