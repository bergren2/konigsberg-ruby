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
    current_freq = 0
    if @part == 1 then
      return @changes.sum
    end
  end
end
