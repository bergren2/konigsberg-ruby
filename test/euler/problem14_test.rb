require "test_helper"
require "solutions/14"

class Problem14Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 837799, Problem14.new(1000000)
  end
end
