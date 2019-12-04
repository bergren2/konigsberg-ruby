require "advent"

module Advent
  class Year2019Day1
    include Solvable

    def initialize(filename_or_int, part)
      @part = part
      @nums = []

      if filename_or_int.is_a?(String)
        @nums = File.open(resource_path(filename_or_int)).each_line.map(&:to_i)
      elsif filename_or_int.is_a?(Integer)
        @nums << filename_or_int
      end
    end

    def solution
      sum = 0
      if @part == 1
        @nums.each do |n|
          sum += calc_fuel(n)
        end
      else # part 2
        @nums.each do |n|
          sum += recurse_fuel(n)
        end
      end
      sum
    end

    private

    def calc_fuel(mass)
      mass / 3 - 2
    end

    def recurse_fuel(mass)
      amt = calc_fuel(mass)
      if amt.positive?
        amt + recurse_fuel(amt)
      else
        0
      end
    end
  end
end
