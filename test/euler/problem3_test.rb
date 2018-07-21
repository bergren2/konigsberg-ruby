require "test_helper"
require "solutions/3"

class Problem3Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 29, Problem3.new(13195)
    assert_solution 6857, Problem3.new(600851475143)
  end
end
