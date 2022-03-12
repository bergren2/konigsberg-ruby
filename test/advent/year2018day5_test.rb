require "test_helper"
require "solutions/year2018day5"

class Year2018Day4Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 2, Year2018Day5.new("aa", 1)
    assert_solution 0, Year2018Day5.new("aA", 1)
    assert_solution 1, Year2018Day5.new("aAa", 1)
    assert_solution 2, Year2018Day5.new("dAaC", 1)
    assert_solution 10, Year2018Day5.new("dabAcCaCBAcCcaDA", 1)
    assert_solution 9808, Year2018Day5.new("year2018day5.txt", 1)
  end

  def test_part2
    assert_solution 4, Year2018Day5.new("dabAcCaCBAcCcaDA", 2)
    assert_solution 6484, Year2018Day5.new("year2018day5.txt", 2)
  end
end
