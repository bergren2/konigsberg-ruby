require "test_helper"
require "solutions/year2017day6"

class Year2017Day6Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 5, Year2017Day6.new([0, 2, 7, 0], 1)
    assert_solution 7864, Year2017Day6.new([
      0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11
    ], 1)
  end

  def test_part2
    assert_solution 4, Year2017Day6.new([0, 2, 7, 0], 2)
    assert_solution 1695, Year2017Day6.new([
      0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11
    ], 2)
  end
end
