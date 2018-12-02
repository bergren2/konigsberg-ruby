require "advent_solvable"

class Year2018Day2
  include AdventSolvable

  def initialize(filename, part)
    @part = part
    @box_ids = File.open(resource_path(filename), &:readlines).map(&:strip)
  end

  def solution
    if @part == 1
      twos = 0
      threes = 0

      @box_ids.each do |id|
        count_hash = id.scan(/\w/).inject(Hash.new(0)){ |h, c| h[c] += 1; h }
        twos += 1 if count_hash.has_value? 2
        threes += 1 if count_hash.has_value? 3
      end

      twos * threes
    else # part 2
    end
  end

  def checksum
    # TODO
  end
end
