require "test_helper"
require "solutions/15"

class Problem15Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 6, Problem15.new(2)
    assert_solution 137_846_528_820, Problem15.new(20)
  end
end
