require_relative "test_helper"
require_relative "../solutions/11"

class Problem11Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 70600674, Problem11.new()
  end
end
