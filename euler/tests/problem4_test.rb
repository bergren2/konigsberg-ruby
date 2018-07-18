require_relative "test_helper"
require_relative "../solutions/4"

class Problem4Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 9009, Problem4.new(2)
    assert_solution 906609, Problem4.new(3)
  end
end
