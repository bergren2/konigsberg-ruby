require "test_helper"
require "solutions/5"

class Problem5Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 2520, Problem5.new(10)
    assert_solution 232792560, Problem5.new(20)
  end
end
