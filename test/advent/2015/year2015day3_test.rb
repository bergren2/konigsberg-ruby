require "test_helper"
require "year2015day3"

class AdventYear2015Day3Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 2, Advent::Year2015Day3.new(">", 1)
    assert_solution 4, Advent::Year2015Day3.new("^>v<", 1)
    assert_solution 2, Advent::Year2015Day3.new("^v^v^v^v^v", 1)
    assert_solution 2592, Advent::Year2015Day3.new("year2015day3.txt", 1)
  end

  def test_part2
    assert_solution 3, Advent::Year2015Day3.new("^v", 2)
    assert_solution 3, Advent::Year2015Day3.new("^>v<", 2)
    assert_solution 11, Advent::Year2015Day3.new("^v^v^v^v^v", 2)
    assert_solution 2360, Advent::Year2015Day3.new("year2015day3.txt", 2)
  end
end
