require "test_helper"
require "year2017day2"

class AdventYear2017Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 18,     Advent::Year2017Day2.new("year2017day2sheet1.txt", 1)
    assert_solution 32121,  Advent::Year2017Day2.new("year2017day2sheet2.txt", 1)
  end

  def test_part2
    assert_solution 9,      Advent::Year2017Day2.new("year2017day2sheet3.txt", 2)
    assert_solution 197,    Advent::Year2017Day2.new("year2017day2sheet2.txt", 2)
  end
end
