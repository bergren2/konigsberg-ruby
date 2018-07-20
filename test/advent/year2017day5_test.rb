require "test_helper"
require "solutions/year2017day5"

class Year2017Day5Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 5, Year2017Day5.new("year2017day5_1.txt", 1)
    assert_solution 381680, Year2017Day5.new("year2017day5_2.txt", 1)
  end

  def test_part2
    assert_solution 10, Year2017Day5.new("year2017day5_1.txt", 2)
    assert_solution 29717847, Year2017Day5.new("year2017day5_2.txt", 2)
  end
end
