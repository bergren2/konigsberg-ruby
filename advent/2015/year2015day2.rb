require "advent"

module Advent
  class Year2015Day1
    include Solvable

    def initialize filename_or_string, part
      if filename_or_string.end_with? ".txt"
        @s = File.readlines(resource_path(filename_or_string)).map { |l| l.strip }
      else # assumes string
        @s = [filename_or_string]
      end

      @part = part
    end

    def solution
      total = 0

      if @part == 1
        @s.each do |instruction|
          dimensions = instruction.split("x").map { |x| x.to_i }
          l = dimensions[0]
          w = dimensions[1]
          h = dimensions[2]
          smol = nil

          sides = [l*w, w*h, l*h]
          smol = sides.min

          total += 2 * sides.sum + smol
        end
      else # assume part 2
        @s.each do |instruction|
          dimensions = instruction.split("x").map { |x| x.to_i }
          l = dimensions[0]
          w = dimensions[1]
          h = dimensions[2]

          bow = l * w * h

          sides = [l+w, w+h, l+h]
          half_perim = sides.min

          total += 2 * half_perim + bow
        end
      end

      total
    end
  end
end