require "advent"

module Advent
  class Year2019Day2
    include Solvable

    def initialize(filename_or_intcode, part)
      @part = part

      intcodes = if filename_or_intcode.end_with? ".txt"
                   codes = File.open(resource_path(filename_or_intcode), &:readline).split(",")

                   # create 1202 program alarm
                   codes[1] = 12
                   codes[2] = 2
                   codes
                 else # assume Intcode
                   filename_or_intcode.split(",")
                 end
      @program = intcodes.map(&:to_i)
    end

    def solution
      head = 0

      while @program[head] != 99
        op = @program[head]
        n1 = @program[head + 1]
        n2 = @program[head + 2]
        out = @program[head + 3]

        # complete operation
        case op
        when 1 # add
          @program[out] = @program[n1] + @program[n2]
        when 2 # multiply
          @program[out] = @program[n1] * @program[n2]
        else
          throw "Don't understand op '#{op}'"
        end

        # move head to next location
        head += 4
      end

      @program[0]
    end
  end
end
