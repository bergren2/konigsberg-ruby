require "test_helper"
require "year2019day1"

class AdventYear2019Day1Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 2, Advent::Year2019Day1.new(12, 1)
    assert_solution 2, Advent::Year2019Day1.new(14, 1)
    assert_solution 654, Advent::Year2019Day1.new(1_969, 1)
    assert_solution 33_583, Advent::Year2019Day1.new(100_756, 1)
    assert_solution 3_160_932, Advent::Year2019Day1.new("year2019day1.txt", 1)
  end
end
