require "advent"

module Advent
  class Year2017Day4
    include Solvable

    def initialize filename, part
      @filename = filename

      if part == 1
        @line_transform = ->(l) { l.split }
      else # assume part 2
        @line_transform = lambda do |l|
          l.split.map { |w| w.split("").sort.join("") }
        end
      end
    end

    def solution
      count = 0

      File.readlines(resource_path(@filename)).each do |line|
        words = @line_transform.call line
        count += 1 if words.size == words.uniq.size
      end

      count
    end
  end
end