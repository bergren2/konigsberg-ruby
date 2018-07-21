require "advent_solvable"

class Year2017Day6
  include AdventSolvable

  def initialize allocation, part
    @allocation = allocation
    @part = part
  end

  def solution
    cycles = 0
    num_banks = @allocation.size
    seen = []

    loop do
      seen << @allocation.to_s # so lazy

      dist = @allocation.max
      dist_i = @allocation.index(dist)
      @allocation[dist_i] = 0

      (1..dist).each do |i|
        @allocation[(dist_i + i) % num_banks] += 1
      end

      cycles += 1
      break if seen.include? @allocation.to_s
    end

    if @part == 1
      cycles
    else # assume part 2
      seen.size - seen.index(@allocation.to_s)
    end
  end
end
