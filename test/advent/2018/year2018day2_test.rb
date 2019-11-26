require "test_helper"
require "year2018day2"

class AdventYear2018Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 12,   Advent::Year2018Day2.new("year2018day2_1.txt", 1)
    assert_solution 6370, Advent::Year2018Day2.new("year2018day2_2.txt", 1)
  end

  def test_part2
    assert_solution "fgij", Advent::Year2018Day2.new("year2018day2_3.txt", 2)
    assert_solution "rmyxgdlihczskunpfijqcebtv", Advent::Year2018Day2.new("year2018day2_2.txt", 2)
  end
end
