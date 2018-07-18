require_relative "test_helper"
require_relative "../solutions/18"

class Problem18Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 23, Problem18.new("mps4.txt")
    assert_solution 1074, Problem18.new("mps15.txt")
  end
end
