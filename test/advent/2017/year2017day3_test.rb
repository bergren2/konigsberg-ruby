require "test_helper"
require "year2017day3"

class AdventYear2017Day3Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 0,    Advent::Year2017Day3.new(1, 1)
    assert_solution 2,    Advent::Year2017Day3.new(9, 1)
    assert_solution 3,    Advent::Year2017Day3.new(12, 1)
    assert_solution 3,    Advent::Year2017Day3.new(16, 1)
    assert_solution 2,    Advent::Year2017Day3.new(23, 1)
    assert_solution 5,    Advent::Year2017Day3.new(36, 1)
    assert_solution 31,   Advent::Year2017Day3.new(1024, 1)
    assert_solution 419,  Advent::Year2017Day3.new(289326, 1)
  end

  def test_part2
    assert_solution 1,      Advent::Year2017Day3.new(0, 2)
    assert_solution 2,      Advent::Year2017Day3.new(1, 2)
    assert_solution 10,     Advent::Year2017Day3.new(5, 2)
    assert_solution 11,     Advent::Year2017Day3.new(10, 2)
    assert_solution 23,     Advent::Year2017Day3.new(15, 2)
    assert_solution 23,     Advent::Year2017Day3.new(20, 2)
    assert_solution 54,     Advent::Year2017Day3.new(50, 2)
    assert_solution 122,    Advent::Year2017Day3.new(100, 2)
    assert_solution 295229, Advent::Year2017Day3.new(289326, 2)
  end
end
