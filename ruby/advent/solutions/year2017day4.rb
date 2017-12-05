class Year2017Day4
  include AdventSolvable

  def initialize filename, part
    @filename = filename
    @part = part
  end

  def solution
    count = 0

    File.readlines(resource_path(@filename)).each do |line|
      words = line.split
      count += 1 if words.size == words.uniq.size
    end

    count
  end
end
