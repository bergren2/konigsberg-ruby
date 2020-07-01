require "advent"
require "cartesian"

module Advent
  class Year2015Day3
    include Solvable

    def initialize filename_or_string, part
      if filename_or_string.end_with? ".txt"
        @s = File.readlines(resource_path(filename_or_string)).map { |l| l.strip }
      else # assumes string
        @s = [filename_or_string]
      end

      @cart = CartesianCoordinateSystem.new
      @part = part
    end

    def solution
      x = 0
      y = 0
      @cart[x, y] = 1

      @s.each do |instruction|
        instruction.split("").each do |dir|
          case dir
          when "^"
            y += 1
          when "<"
            x -= 1
          when "v"
            y -= 1
          when ">"
            x += 1
          end

          @cart[x, y] = 1
        end
      end

      if @part == 1
        @cart.values.sum
      else # assume part 2
        # yo
      end
    end
  end
end