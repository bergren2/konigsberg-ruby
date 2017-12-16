require_relative "test_helper"
require_relative "../solutions/19"

class Problem19Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 171, Problem19.new()
  end
end
