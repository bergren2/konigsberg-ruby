require "test_helper"
require "year2019day2"

class AdventYear2019Day2Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3_500,      Advent::Year2019Day2.new("1,9,10,3,2,3,11,0,99,30,40,50", 1)
    assert_solution 2,          Advent::Year2019Day2.new("1,0,0,0,99", 1)
    assert_solution 2,          Advent::Year2019Day2.new("2,3,0,3,99", 1)
    assert_solution 2,          Advent::Year2019Day2.new("2,4,4,5,99,0", 1)
    assert_solution 30,         Advent::Year2019Day2.new("1,1,1,4,99,5,6,0,99", 1)
    assert_solution 6_568_671,  Advent::Year2019Day2.new("year2019day2.txt", 1)
  end
end
