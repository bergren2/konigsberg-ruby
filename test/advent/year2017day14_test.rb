require "test_helper"
require "solutions/year2017day14"

class Year2017Day14Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 8108, Year2017Day14.new("flqrgnkx", 1)
    assert_solution 8074, Year2017Day14.new("jzgqcdpd", 1)
  end
end
