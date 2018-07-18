require_relative "test_helper"
require_relative "../solutions/1"

class Problem1Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 23, Problem1.new(10)
    assert_solution 233168, Problem1.new(1000)
  end
end
