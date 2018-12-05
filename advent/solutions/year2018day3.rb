require "advent_solvable"
require "cartesian"

class Year2018Day3
  include AdventSolvable

  def initialize(filename, part)
    @part = part
    @claims = File.open(resource_path(filename), &:readlines).map(&:strip).map { |s| Claim.new(s) }
  end

  def solution
    cart = CartesianCoordinateSystem.new

    @claims.each do |c|
      (c.left...c.left+c.width).each do |x|
        (c.top...c.top+c.height).each do |y|
          cart[x, y] = if cart[x, y]
                         cart[x, y] << c
                       else
                         [c]
                       end
        end
      end
    end

    if @part == 1
      cart.values.count { |a| a.size > 1 }
    else # part 2
      cart.values.select { |a| a.size == 1 }.flatten # find coordinates with only one claim
          .group_by(&:id).find { |id, claims| claims.first.area == claims.size }
          .first
    end
  end
end

class Claim
  attr_reader :id, :left, :top, :width, :height

  REGEX = /^#(\d+)\s+@\s+(\d+),(\d+):\s+(\d+)x(\d+)$/

  # Example claim: #1 @ 565,109: 14x24
  def initialize(string)
    m = REGEX.match(string)
    if m
      @id = m[1].to_i
      @left = m[2].to_i
      @top = m[3].to_i
      @width = m[4].to_i
      @height = m[5].to_i
    else
      raise ArgumentError
    end
  end

  def area
    @width * @height
  end
end
