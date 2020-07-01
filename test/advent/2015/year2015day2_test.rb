require "test_helper"
require "year2015day2"

class AdventYear2015Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 58, Advent::Year2015Day2.new("2x3x4", 1)
    assert_solution 43, Advent::Year2015Day2.new("1x1x10", 1)
    assert_solution 1586300, Advent::Year2015Day2.new("year2015day2.txt", 1)
  end

  def test_part2
    assert_solution 34, Advent::Year2015Day2.new("2x3x4", 2)
    assert_solution 14, Advent::Year2015Day2.new("1x1x10", 2)
    assert_solution 3737498, Advent::Year2015Day2.new("year2015day2.txt", 2)
  end
end
