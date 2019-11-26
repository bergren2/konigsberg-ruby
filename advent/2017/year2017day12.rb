require "advent"
require "set"

module Advent
  class Year2017Day12
    include Solvable

    def initialize filename, part
      @edges = File.new(resource_path(filename)).each_line.map { |l| l.strip }
      @part = part
    end

    def solution
      sets = []
      @edges.each do |e|
        m = /(\d+) <-> (.+)/.match(e)
        node = m[1].to_i
        neighbors = m[2].split(/,\s?/).map { |x| x.to_i }

        this_set = ([node] + neighbors).to_set

        sets.each_with_index do |s, i|
          if s.intersect? this_set
            this_set |= sets[i]
            sets[i] = nil
          end
        end

        sets.compact!
        sets << this_set
      end

      if @part == 1
        sets.select { |s| s.include? 0 }.first.size
      else # assume part 2
        sets.size
      end
    end
  end
end