class Year2017Day1
  include AdventSolvable

  def initialize filename_or_int, part
    if filename_or_int.end_with? ".txt"
      @n = File.open(resource_path(filename_or_int), &:readline).strip
    else # assumes int string
      @n = filename_or_int
    end

    @part = part
  end

  def solution
    sum = 0

    if @part == 1 then
      jump = 1
    else # assume part 2
      jump = @n.size / 2
    end

    @n.each_char.with_index do |c, i|
      sum += c.to_i if c == @n[(i+jump) % @n.size]
    end

    sum
  end
end
