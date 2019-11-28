require "test_helper"
require "year2017day10"

class AdventYear2017Day10Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 38415, Advent::Year2017Day10.new("189,1,111,246,254,2,0,120,215,93,255,50,84,15,94,62", 1)
  end

  def test_part2
    assert_solution "a2582a3a0e66e6e86e3812dcb672a272", Advent::Year2017Day10.new("", 2)
    assert_solution "33efeb34ea91902bb2f59c9920caa6cd", Advent::Year2017Day10.new("AoC 2017", 2)
    assert_solution "3efbe78a8d82f29979031a4aa0b16a9d", Advent::Year2017Day10.new("1,2,3", 2)
    assert_solution "63960835bcdc130f0b66d7ff4f6a5a8e", Advent::Year2017Day10.new("1,2,4", 2)
    assert_solution "9de8846431eef262be78f590e39a4848", Advent::Year2017Day10.new("189,1,111,246,254,2,0,120,215,93,255,50,84,15,94,62", 2)
  end
end
