require "advent"

module Advent
  class Year2017Day7
    include Solvable

    def initialize(filename, part)
      @discs = {}
      @part = part

      File.readlines(resource_path(filename)).each do |line|
        words = line.split

        holder = words[0]
        weight = /\((\d+)\)/.match(words[1])[1].to_i

        holding = []
        (3..words.size - 1).each do |i|
          holding << /(\w+),?/.match(words[i])[1]
        end

        # create doubly-linked tree
        @discs[holder] = {} unless @discs.key? holder
        @discs[holder][:weight] = weight
        @discs[holder][:holding] = holding

        holding.each do |program|
          @discs[program] = {} unless @discs.key? program
          @discs[program][:holder] = holder
        end
      end
    end

    def solution
      root = @discs.reject { |_key, v| v.key? :holder }.keys.first
      if @part == 1
        root
      else # assume part 2
        unbalanced = find_unbalanced_above root
        sib = siblings(unbalanced).first

        total_weight(sib) - weight_above(unbalanced)
      end
    end

    def weight_above(program)
      # yay caching
      if @discs[program].key? :weight_above
        @discs[program][:weight_above]
      else
        sum = 0
        @discs[program][:holding].each do |h|
          sum += @discs[h][:weight] + weight_above(h)
        end

        @discs[program][:weight_above] = sum
      end
    end

    def total_weight(program)
      weight_above(program) + @discs[program][:weight]
    end

    def find_unbalanced_above(program)
      holding = @discs[program][:holding]
      min = holding.min_by { |p| total_weight(p) }
      max = holding.max_by { |p| total_weight(p) }

      if holding.select { |p| total_weight(p) == total_weight(min) }.count == 1
        find_unbalanced_above min
      elsif holding.select { |p| total_weight(p) == total_weight(max) }.count == 1
        find_unbalanced_above max
      else
        # we found the program!
        program
      end
    end

    def siblings(program)
      holder = @discs[program][:holder]
      @discs[holder][:holding].reject { |p| p == program }
    end
  end
end