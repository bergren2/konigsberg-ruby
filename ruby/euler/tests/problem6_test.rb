require_relative "test_helper"
require_relative "../solutions/6"

class Problem6Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 2640, Problem6.new(10)
    assert_solution 25164150, Problem6.new(100)
  end
end
