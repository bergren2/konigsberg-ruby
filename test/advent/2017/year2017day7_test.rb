require "test_helper"
require "year2017day7"

class AdventYear2017Day7Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution "tknk",     Advent::Year2017Day7.new("year2017day7_1.txt", 1)
    assert_solution "mwzaxaj",  Advent::Year2017Day7.new("year2017day7_2.txt", 1)
  end

  def test_part2
    assert_solution 60,   Advent::Year2017Day7.new("year2017day7_1.txt", 2)
    assert_solution 1219, Advent::Year2017Day7.new("year2017day7_2.txt", 2)
  end
end
