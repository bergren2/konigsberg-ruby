require "advent_solvable"

class Year2018Day1
  include AdventSolvable

  def initialize(change_sequence_or_filename, part)
    @part = part

    sequence_regex = /^([+-]\d+)(,\s+[+-]\d+)*$/
    if sequence_regex.match? change_sequence_or_filename then
      string_changes = change_sequence_or_filename.split(/,\s+/)
    else
      string_changes = File.open(resource_path(change_sequence_or_filename), &:readlines)
    end
    @changes = string_changes.map { |s| s.to_i }
  end

  def solution
    if @part == 1 then
      return @changes.sum
    else # part 2
      i = -1
      result = 0
      seen_once = Set.new

      until seen_once.include?(result) do
        seen_once << result
        i += 1
        result += @changes[i % @changes.length]
      end

      return result
    end
  end
end
