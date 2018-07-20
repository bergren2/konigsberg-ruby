require "test_helper"
require "solutions/2"

class Problem2Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 44, Problem2.new(90)
    assert_solution 4613732, Problem2.new(4000000)
  end
end
