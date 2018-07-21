require "test_helper"
require "solutions/7"

class Problem7Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 13, Problem7.new(6)
    assert_solution 104743, Problem7.new(10001)
  end
end
