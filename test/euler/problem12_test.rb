require "test_helper"
require "solutions/12"

class Problem12Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 28, Problem12.new(5)
    assert_solution 76576500, Problem12.new(500)
  end
end
