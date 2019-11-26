require "test_helper"
require "year2018day3"

class AdventYear2018Day3Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 4,      Advent::Year2018Day3.new("year2018day3_1.txt", 1)
    assert_solution 97218,  Advent::Year2018Day3.new("year2018day3_2.txt", 1)
  end

  def test_part2
    assert_solution 3,    Advent::Year2018Day3.new("year2018day3_1.txt", 2)
    assert_solution 717,  Advent::Year2018Day3.new("year2018day3_2.txt", 2)
  end
end
