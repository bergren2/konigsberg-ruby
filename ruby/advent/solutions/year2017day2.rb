class Year2017Day2
  include AdventSolvable

  def initialize filename, part
    @filename = filename
    @part = part
  end

  def solution
    checksum = 0

    File.readlines(resource_path(@filename)).each do |line|
      min = nil
      max = nil

      line.split.map(&:to_i).each do |i|
        min = i if min.nil?
        max = i if max.nil?

        min = i if i < min
        max = i if i > max
      end

      checksum += max - min
    end

    checksum
  end
end
