require_relative "test_helper"
require_relative "../solutions/8"

class Problem8Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 5832, Problem8.new(4)
    assert_solution 23514624000, Problem8.new(13)
  end
end
