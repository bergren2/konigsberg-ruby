require "test_helper"
require "solutions/year2017day11"

class Year2017Day11Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3, Year2017Day11.new("ne,ne,ne", 1)
    assert_solution 0, Year2017Day11.new("ne,ne,sw,sw", 1)
    assert_solution 2, Year2017Day11.new("ne,ne,s,s", 1)
    assert_solution 3, Year2017Day11.new("se,sw,se,sw,sw", 1)
    assert_solution 784, Year2017Day11.new("year2017day11.txt", 1)
  end

  def test_part2
    assert_solution 1558, Year2017Day11.new("year2017day11.txt", 2)
  end
end
