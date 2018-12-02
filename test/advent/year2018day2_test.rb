require "test_helper"
require "solutions/year2018day2"

class Year2018Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 12, Year2018Day2.new("year2018day2_1.txt", 1)
    assert_solution 6370, Year2018Day2.new("year2018day2_2.txt", 1)
  end

  def test_part2
  end
end
