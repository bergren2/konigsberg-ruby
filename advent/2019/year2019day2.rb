require "advent"
require "intcode"

module Advent
  module Year2019Day2
    class Part1
      include Solvable

      def initialize(filename_or_intcode)
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
        Intcode.new(@program).run
      end
    end

    class Part2
      include Solvable

      def initialize(filename, output)
        @program = File.open(resource_path(filename), &:readline).split(",").map(&:to_i)
        @output = output
      end

      def solution
        # which name and verb give me the output?
        # create 1202 program alarm

        (0..99).each do |noun|
          (0..99).each do |verb|
            copy = Array.new @program
            copy[1] = noun
            copy[2] = verb

            begin
              sol = Intcode.new(copy).run
              return 100 * noun + verb if sol == @output
            rescue RuntimeError
              next
            end

          end
        end
      end
    end
  end
end
