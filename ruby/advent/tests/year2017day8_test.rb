require_relative "test_helper"
require_relative "../solutions/year2017day8"

class Year2017Day8Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 1, Year2017Day8.new("year2017day8_1.txt", 1)
    assert_solution 3745, Year2017Day8.new("year2017day8_2.txt", 1)
  end

  def test_part2
    assert_solution 10, Year2017Day8.new("year2017day8_1.txt", 2)
    assert_solution 4644, Year2017Day8.new("year2017day8_2.txt", 2)
  end
end
