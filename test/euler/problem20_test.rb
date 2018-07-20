require "test_helper"
require "solutions/20"

class Problem20Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 27, Problem20.new(10)
    assert_solution 648, Problem20.new(100)
  end
end
