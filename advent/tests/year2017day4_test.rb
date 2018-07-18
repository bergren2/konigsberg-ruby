require_relative "test_helper"
require_relative "../solutions/year2017day4"

class Year2017Day4Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 383, Year2017Day4.new("year2017day4.txt", 1)
  end

  def test_part2
    assert_solution 265, Year2017Day4.new("year2017day4.txt", 2)
  end
end
