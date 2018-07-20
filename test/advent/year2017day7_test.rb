require "test_helper"
require "solutions/year2017day7"

class Year2017Day7Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution "tknk", Year2017Day7.new("year2017day7_1.txt", 1)
    assert_solution "mwzaxaj", Year2017Day7.new("year2017day7_2.txt", 1)
  end

  def test_part2
    assert_solution 60, Year2017Day7.new("year2017day7_1.txt", 2)
    assert_solution 1219, Year2017Day7.new("year2017day7_2.txt", 2)
  end
end
