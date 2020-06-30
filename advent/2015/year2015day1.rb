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
      basement_index = nil

      @s.split("").each_with_index do |c, i|
        if c == "("
          sum += 1
        else
          sum -= 1
        end

        basement_index = i + 1 if sum < 0 and basement_index.nil?
      end

      if @part == 1
        sum
      else # assume part 2
        basement_index
      end
    end
  end
end