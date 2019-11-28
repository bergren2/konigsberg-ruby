require "test_helper"
require "year2018day4"

class AdventYear2018Day4Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 240,   Advent::Year2018Day4.new("year2018day4_1.txt", 1)
    assert_solution 20859, Advent::Year2018Day4.new("year2018day4_2.txt", 1)
  end

  def test_part2
    assert_solution 4455,   Advent::Year2018Day4.new("year2018day4_1.txt", 2)
    assert_solution 76576,  Advent::Year2018Day4.new("year2018day4_2.txt", 2)
  end
end
