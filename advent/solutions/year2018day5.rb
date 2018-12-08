require "advent_solvable"

class Year2018Day5
  include AdventSolvable

  def initialize(polymer_or_filename, part)
    @part = part

    m = /^.+\.txt$/.match(polymer_or_filename)
    @polymer = if m
                 Polymer.new File.open(resource_path(polymer_or_filename), &:readline).strip
               else
                 Polymer.new polymer_or_filename
               end
  end

  def solution
    if @part == 1
      @polymer.react!

      @polymer.size
    else # part 2
      @polymer.letters.map{ |l| Polymer.new(@polymer.string.tr(l + l.upcase, "")).react!.size }.min
    end
  end

  # TODO this is too slow, need to use a data structure
  # try a doubly-linked list and then find reactions and then target
  # them one at a time, scanning outward from past reactions
  def react(polymer, offset = false)
    new_polymer = []

    polymer.each_char.slice_when { |a, b| a.ord + 32 != b.ord && a.ord - 32 != b.ord }.each do |a|
      if a.size == 1
        new_polymer += a
      elsif a.size.odd?
        new_polymer << a.first
      end
    end

    new_polymer.reduce(:+) || ""
  end
end

class Polymer
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def size
    @string.size
  end

  def letters
    @string.downcase.each_char.uniq
  end

  def react!
    i = 0 # starting index
    old_size = nil
    while i < size
      if (i-1 >= 0) && reactable?(@string[i], @string[i-1])
        @string.slice!(i-1, 2)
        i = i-1
      elsif (i+1 < size) && reactable?(@string[i], @string[i+1])
        @string.slice!(i, 2)
      else
        i += 1
      end
    end

    self
  end

  private
  def reactable?(a, b)
    a.ord + 32 == b.ord || a.ord - 32 == b.ord
  end
end
