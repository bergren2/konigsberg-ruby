require "test_helper"
require "solutions/67"

class Problem67Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 7273, Problem67.new("mps100.txt")
  end
end
