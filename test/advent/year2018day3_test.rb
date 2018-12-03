require "test_helper"
require "solutions/year2018day3"

class Year2018Day3Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 4, Year2018Day3.new("year2018day3_1.txt", 1)
    assert_solution 97218, Year2018Day3.new("year2018day3_2.txt", 1)
  end

  def test_part2
    assert_solution 3, Year2018Day3.new("year2018day3_1.txt", 2)
    assert_solution nil, Year2018Day3.new("year2018day3_2.txt", 2)
  end
end
