require "test_helper"
require "solutions/9"

class Problem9Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 60, Problem9.new(12)
    assert_solution 31875000, Problem9.new(1000)
  end
end
