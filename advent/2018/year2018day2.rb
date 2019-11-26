require "advent"

module Advent
  class Year2018Day2
    include Solvable

    def initialize(filename, part)
      @part = part
      @box_ids = File.open(resource_path(filename), &:readlines).map(&:strip)
    end

    def solution
      if @part == 1
        twos = 0
        threes = 0

        @box_ids.each do |id|
          count_hash = id.scan(/\w/).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }
          twos += 1 if count_hash.value? 2
          threes += 1 if count_hash.value? 3
        end

        twos * threes
      else # part 2
        @box_ids.sort!

        # O(n^2) yayyy
        (0...@box_ids.size).each do |i|
          (0...@box_ids.size).each do |j|
            common = letters_in_common(@box_ids[i], @box_ids[j])
            return common if common.size + 1 == @box_ids[i].size
          end
        end
      end
    end

    def letters_in_common(str1, str2)
      nil unless str1.size == str2.size

      common = ""

      (0...str1.size).each do |i|
        common += str1[i] if str1[i] == str2[i]
      end

      common
    end
  end
end