require_relative "test_helper"
require_relative "../solutions/25"

class Problem25Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 12, Problem25.new(3)
    assert_solution 4782, Problem25.new(1000)
  end
end
