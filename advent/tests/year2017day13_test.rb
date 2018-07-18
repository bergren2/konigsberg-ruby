require_relative "test_helper"
require_relative "../solutions/year2017day13"

class Year2017Day13Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 24, Year2017Day13.new("year2017day13_1.txt", 1)
    assert_solution 1504, Year2017Day13.new("year2017day13_2.txt", 1)
  end
end
