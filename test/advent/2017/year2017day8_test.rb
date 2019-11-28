require "test_helper"
require "year2017day8"

class AdventYear2017Day8Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 1,    Advent::Year2017Day8.new("year2017day8_1.txt", 1)
    assert_solution 3745, Advent::Year2017Day8.new("year2017day8_2.txt", 1)
  end

  def test_part2
    assert_solution 10,   Advent::Year2017Day8.new("year2017day8_1.txt", 2)
    assert_solution 4644, Advent::Year2017Day8.new("year2017day8_2.txt", 2)
  end
end
