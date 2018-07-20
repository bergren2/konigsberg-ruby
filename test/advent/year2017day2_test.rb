require "test_helper"
require "solutions/year2017day2"

class Year2017Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 18, Year2017Day2.new("year2017day2sheet1.txt", 1)
    assert_solution 32121, Year2017Day2.new("year2017day2sheet2.txt", 1)
  end

  def test_part2
    assert_solution 9, Year2017Day2.new("year2017day2sheet3.txt", 2)
    assert_solution 197, Year2017Day2.new("year2017day2sheet2.txt", 2)
  end
end
