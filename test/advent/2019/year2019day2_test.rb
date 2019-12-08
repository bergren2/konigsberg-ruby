require "test_helper"
require "year2019day2"

class AdventYear2019Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3500,     Advent::Year2019Day2::Part1.new("1,9,10,3,2,3,11,0,99,30,40,50")
    assert_solution 2,        Advent::Year2019Day2::Part1.new("1,0,0,0,99")
    assert_solution 2,        Advent::Year2019Day2::Part1.new("2,3,0,3,99")
    assert_solution 2,        Advent::Year2019Day2::Part1.new("2,4,4,5,99,0")
    assert_solution 30,       Advent::Year2019Day2::Part1.new("1,1,1,4,99,5,6,0,99")
    assert_solution 6568671,  Advent::Year2019Day2::Part1.new("year2019day2.txt")
  end

  # def test_part2
  #   assert_solution 1202, Advent::Year2019Day2.new(6_568_671, 2)
  #   assert_solution nil, Advent::Year2019Day2.new(19_690_720, 2)
  # end
end
