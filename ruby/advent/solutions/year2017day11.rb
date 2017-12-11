class Year2017Day11
  include AdventSolvable

  def initialize string_or_filename, part
    if string_or_filename.end_with? ".txt"
      @path = File.new(resource_path(string_or_filename)).read.strip.split(",").map { |s| s.to_sym }
    else
      @path = string_or_filename.split(",").map { |s| s.to_sym }
    end
  end

  def solution
    grid = HexGrid.new
    @path.each { |d|  grid.move d }
    grid.distance_to_center
  end
end

class HexGrid
  def initialize
    @col = 0
    @height = 0.0
  end

  def move direction
    case direction
    when :n
      @height += 1
    when :s
      @height -= 1
    when :ne
      @col += 1
      @height += 0.5
    when :sw
      @col -= 1
      @height -= 0.5
    when :nw
      @col -= 1
      @height += 0.5
    when :se
      @col += 1
      @height -= 0.5
    else
      raise "Incorrect direction: #{direction}"
    end
  end

  def distance_to_center
    displacement = 0.5 * @col.abs
    (@height.abs - displacement + @col.abs).to_i
  end
end
