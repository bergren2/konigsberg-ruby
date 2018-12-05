require "test_helper"
require "solutions/year2018day4"

class Year2018Day4Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 240, Year2018Day4.new("year2018day4_1.txt", 1)
    assert_solution 20859, Year2018Day4.new("year2018day4_2.txt", 1)
  end

  def test_part2
  end
end
