require "test_helper"
require "solutions/19"

class Problem19Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 171, Problem19.new()
  end
end
