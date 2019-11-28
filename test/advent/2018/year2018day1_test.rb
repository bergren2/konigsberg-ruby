require "test_helper"
require "year2018day1"

class AdventYear2018Day1Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3,    Advent::Year2018Day1.new("+1, -2, +3, +1", 1)
    assert_solution 3,    Advent::Year2018Day1.new("+1, +1, +1", 1)
    assert_solution 0,    Advent::Year2018Day1.new("+1, +1, -2", 1)
    assert_solution(-6,   Advent::Year2018Day1.new("-1, -2, -3", 1))
    assert_solution 520,  Advent::Year2018Day1.new("year2018day1.txt", 1)
  end

  def test_part2
    assert_solution 2,    Advent::Year2018Day1.new("+1, -2, +3, +1", 2)
    assert_solution 0,    Advent::Year2018Day1.new("+1, -1", 2)
    assert_solution 10,   Advent::Year2018Day1.new("+3, +3, +4, -2, -4", 2)
    assert_solution 5,    Advent::Year2018Day1.new("-6, +3, +8, +5, -6", 2)
    assert_solution 14,   Advent::Year2018Day1.new("+7, +7, -2, -7, -4", 2)
    assert_solution 394,  Advent::Year2018Day1.new("year2018day1.txt", 2)
  end
end
