require "test_helper"
require "solutions/year2017day12"

class Year2017Day12Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 6, Year2017Day12.new("year2017day12_1.txt", 1)
    assert_solution 113, Year2017Day12.new("year2017day12_2.txt", 1)
  end

  def test_part2
    assert_solution 2, Year2017Day12.new("year2017day12_1.txt", 2)
    assert_solution 202, Year2017Day12.new("year2017day12_2.txt", 2)
  end
end
