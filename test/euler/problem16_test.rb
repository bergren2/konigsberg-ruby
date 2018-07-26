require "test_helper"
require "solutions/16"

class Problem16Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 26, Problem16.new(15)
    assert_solution 1366, Problem16.new(1000)
  end
end
