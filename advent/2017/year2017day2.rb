require "advent"

module Advent
  class Year2017Day2
    include Solvable

    def initialize filename, part
      @filename = filename
      @part = part
    end

    def solution
      checksum = 0

      File.readlines(resource_path(@filename)).each do |line|
        nums = line.split.map(&:to_i).sort

        if @part == 1
          checksum += nums.last - nums.first
        else # assume part 2
          nums.each_with_index do |n, i|
            nums[i+1..nums.size-1].each do |m|
              if m % n == 0
                checksum += m / n
              end
            end
          end
        end
      end

      checksum
    end
  end
end