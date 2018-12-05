require "advent_solvable"

class Year2018Day5
  include AdventSolvable

  def initialize(polymer_or_filename, part)
    @part = part

    m = /^.+\.txt$/.match(polymer_or_filename)
    @polymer = if m
                 File.open(resource_path(polymer_or_filename), &:readline).strip
               else
                 polymer_or_filename
               end
  end

  def solution
    if @part == 1
      polymer = nil
      new_polymer = @polymer

      until new_polymer == polymer
        polymer = new_polymer
        new_polymer = react(polymer)
      end

      new_polymer.size
    else # part 2
    end
  end

  # TODO this is too slow, need to use a data structure
  def react(polymer, offset = false)
    new_polymer = []

    polymer.each_char.slice_when { |a, b| a.ord + 32 != b.ord && a.ord - 32 != b.ord }.each do |a|
      if a.size == 1
        new_polymer += a
      elsif a.size.odd?
        new_polymer << a.first
      end
    end

    new_polymer.reduce(:+) || ""
  end
end
