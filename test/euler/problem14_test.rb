require "test_helper"
require "solutions/14"

class Problem14Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 837_799, Problem14.new(1_000_000)
  end
end
