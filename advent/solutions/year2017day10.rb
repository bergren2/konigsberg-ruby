require "advent_solvable"
require "knothash"

class Year2017Day10
  include AdventSolvable

  def initialize(input, part)
    if part == 1
      @ring = KnotHashRing.new input.split(/,\s*/).map(&:to_i)
    else
      @knothash = KnotHash.new(input.each_byte.to_a + [17, 31, 73, 47, 23])
    end

    @part = part
  end

  def solution
    if @part == 1
      @ring.run_round
      @ring[0] * @ring[1]
    else # assume part 2
      @knothash.val
    end
  end
end
