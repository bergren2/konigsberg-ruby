require "advent"

module Advent
  class Year2018Day1
    include Solvable

    def initialize(change_sequence_or_filename, part)
      @part = part

      sequence_regex = /^([+-]\d+)(,\s+[+-]\d+)*$/
      string_changes = if sequence_regex.match? change_sequence_or_filename
                        change_sequence_or_filename.split(/,\s+/)
                      else
                        File.open(resource_path(change_sequence_or_filename), &:readlines)
                      end
      @changes = string_changes.map(&:to_i)
    end

    def solution
      if @part == 1
        @changes.sum
      else # part 2
        i = -1
        result = 0
        seen_once = Set.new

        until seen_once.include?(result)
          seen_once << result
          i += 1
          result += @changes[i % @changes.length]
        end

        result
      end
    end
  end
end