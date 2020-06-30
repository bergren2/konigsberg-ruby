require "advent"

module Advent
  class Year2015Day1
    include Solvable

    def initialize filename_or_string, part
      if filename_or_string.end_with? ".txt"
        @s = File.open(resource_path(filename_or_string), &:readline).strip
      else # assumes string
        @s = filename_or_string
      end

      @part = part
    end

    def solution
      sum = 0

      @s.split("").each do |c|
        if c == "("
          sum += 1
        else
          sum -= 1
        end
      end

      if @part == 1
        sum
      else # assume part 2
        puts "nope"
      end
    end
  end
end