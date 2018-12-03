require "advent_solvable"
require "cartesian"

class Year2018Day3
  include AdventSolvable

  def initialize(filename, part)
    @part = part
    @claims = File.open(resource_path(filename), &:readlines).map(&:strip).map { |s| Claim.new(s) }
  end

  def solution
    if @part == 1
      cart = CartesianCoordinateSystem.new

      @claims.each do |c|
        (c.left...c.left+c.width).each do |x|
          (c.top...c.top+c.height).each do |y|
            cart[x, y] = if cart[x, y]
                           cart[x, y] + 1
                         else
                           1
                         end
          end
        end
      end

      cart.values.count { |v| v > 1 }
    else # part 2
    end
  end
end

class Claim
  attr_reader :id, :left, :top, :width, :height

  REGEX = /^#(\d+)\s+@\s+(\d+),(\d+):\s+(\d+)x(\d+)$/

  # Example claim: #1 @ 565,109: 14x24
  def initialize(string)
    if REGEX.match?(string)
      m = REGEX.match(string)
      @id = m[1].to_i
      @left = m[2].to_i
      @top = m[3].to_i
      @width = m[4].to_i
      @height = m[5].to_i
    end
  end

  def to_s
    "##{@id} @ #{@left},#{@top}: #{@width}x#{@height}"
  end
end
