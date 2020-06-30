require "test_helper"
require "year2015day1"

class AdventYear2015Day1Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 0, Advent::Year2015Day1.new("(())", 1)
    assert_solution 0, Advent::Year2015Day1.new("()()", 1)
    assert_solution 3, Advent::Year2015Day1.new("(((", 1)
    assert_solution 3, Advent::Year2015Day1.new("(()(()(", 1)
    assert_solution 3, Advent::Year2015Day1.new("))(((((", 1)
    assert_solution -1, Advent::Year2015Day1.new("())", 1)
    assert_solution -1, Advent::Year2015Day1.new("))(", 1)
    assert_solution -3, Advent::Year2015Day1.new(")))", 1)
    assert_solution -3, Advent::Year2015Day1.new(")())())", 1)
    assert_solution nil, Advent::Year2015Day1.new("year2015day1.txt", 1)
  end

  def test_part2
  end
end
