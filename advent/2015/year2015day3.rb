require "advent"
require "cartesian"

module Advent
  class Year2015Day3
    include Solvable

    def initialize filename_or_string, part
      if filename_or_string.end_with? ".txt"
        @s = File.open(resource_path(filename_or_string), &:readline).strip
      else # assumes string
        @s = filename_or_string
      end

      @cart = CartesianCoordinateSystem.new
      @part = part
    end

    def solution
      x = 0
      y = 0
      robo_x = 0
      robo_y = 0

      @cart[0, 0] = 1

      robo_turn = false

      @s.split("").each do |dir|
        case dir
        when "^"
          if robo_turn
            robo_y += 1
          else
            y += 1
          end
        when "<"
          if robo_turn
            robo_x -= 1
          else
            x -= 1
          end
        when "v"
          if robo_turn
            robo_y -= 1
          else
            y -= 1
          end
        when ">"
          if robo_turn
            robo_x += 1
          else
            x += 1
          end
        end

        if robo_turn
          @cart[robo_x, robo_y] = 1
        else
          @cart[x, y] = 1
        end

        if @part == 2
          robo_turn = !robo_turn
        end
      end

      @cart.values.sum
    end
  end
end