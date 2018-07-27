require "advent_solvable"
require "knothash"

class Year2017Day14
  include AdventSolvable

  def initialize(key, part)
    @key = key
    @part = part
  end

  def solution
    if @part == 1
      blocks = 0
      (0..127).each do |i|
        blocks += KnotHash.new("#{@key}-#{i}").val.hex.to_s(2).to_s.count("1")
      end

      blocks
    else
      # part 2
    end
  end
end
