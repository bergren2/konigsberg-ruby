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
      @nums.each do |n|
        sum += n / 3 - 2
      end
      sum
    end
  end
end
