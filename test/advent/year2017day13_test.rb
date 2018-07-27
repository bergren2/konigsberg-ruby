require "test_helper"
require "solutions/year2017day13"

class Year2017Day13Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 24, Year2017Day13.new("year2017day13_1.txt", 1)
    assert_solution 1504, Year2017Day13.new("year2017day13_2.txt", 1)
  end

  def test_part2
    assert_solution 10, Year2017Day13.new("year2017day13_1.txt", 2)
    assert_solution 3_823_370, Year2017Day13.new("year2017day13_2.txt", 2)
  end
end
