require "test_helper"
require "solutions/year2018day1"

class Year2018Day1Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3, Year2018Day1.new("+1, -2, +3, +1", 1)
    assert_solution 3, Year2018Day1.new("+1, +1, +1", 1)
    assert_solution 0, Year2018Day1.new("+1, +1, -2", 1)
    assert_solution -6, Year2018Day1.new("-1, -2, -3", 1)
    assert_solution 520, Year2018Day1.new("year2018day1.txt", 1)
  end
end
