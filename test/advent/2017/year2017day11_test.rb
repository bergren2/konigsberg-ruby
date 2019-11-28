require "test_helper"
require "year2017day11"

class AdventYear2017Day11Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3,    Advent::Year2017Day11.new("ne,ne,ne", 1)
    assert_solution 0,    Advent::Year2017Day11.new("ne,ne,sw,sw", 1)
    assert_solution 2,    Advent::Year2017Day11.new("ne,ne,s,s", 1)
    assert_solution 3,    Advent::Year2017Day11.new("se,sw,se,sw,sw", 1)
    assert_solution 784,  Advent::Year2017Day11.new("year2017day11.txt", 1)
  end

  def test_part2
    assert_solution 1558, Advent::Year2017Day11.new("year2017day11.txt", 2)
  end

  def test_exceptions
    assert_raises RuntimeError do
      assert_solution nil, Advent::Year2017Day11.new("not a direction", 1)
    end
  end
end
