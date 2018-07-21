require "test_helper"
require "solutions/11"

class Problem11Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 70600674, Problem11.new()
  end
end
