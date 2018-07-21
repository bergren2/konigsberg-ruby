require "advent_solvable"

class Year2017Day5
  include AdventSolvable

  def initialize filename, part
    @instructions = File.readlines(resource_path(filename)).map { |l| l.to_i }

    if part == 1
      @increment_rule = ->(a, i) { a[i] += 1 }
    else # assume part 2
      @increment_rule = lambda do |a, i|
        if a[i] >= 3
          a[i] -= 1
        else
          a[i] += 1
        end
      end
    end
  end

  def solution
    count = 0
    i = 0
    while i >= 0 and i < @instructions.size
      old = i
      i = i + @instructions[i]
      @increment_rule.call(@instructions, old)
      count += 1
    end

    count
  end
end
