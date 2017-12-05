class Year2017Day5
  include AdventSolvable

  def initialize filename, part
    @instructions = File.readlines(resource_path(filename)).map { |l| l.to_i }
  end

  def solution
    count = 0
    i = 0
    while i >= 0 and i < @instructions.size
      old = i
      i = i + @instructions[i]
      @instructions[old] += 1
      count += 1
    end

    count
  end
end
