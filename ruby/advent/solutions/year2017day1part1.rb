class Year2017Day1Part1
  include AdventSolvable

  def initialize filename_or_int
    if filename_or_int.end_with? ".txt"
      @n = File.open(resource_path(filename_or_int), &:readline).strip
    else # assumes int string
      @n = filename_or_int
    end
  end

  def solution
    sum = 0

    @n.each_char.with_index do |c, i|
      sum += c.to_i if c == @n[(i+1) % @n.size]
    end

    sum
  end
end
