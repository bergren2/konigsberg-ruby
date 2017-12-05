class Year2017Day4
  include AdventSolvable

  def initialize filename, part
    @filename = filename
    @part = part
  end

  def solution
    count = 0

    if @part == 1
      File.readlines(resource_path(@filename)).each do |line|
        words = line.split
        count += 1 if words.size == words.uniq.size
      end
    else # assume part 2
      File.readlines(resource_path(@filename)).each do |line|
        words = line.split.map { |w| w.split("").sort.join("") }
        count += 1 if words.size == words.uniq.size
      end
    end

    count
  end
end
