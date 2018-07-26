require "test_helper"
require "solutions/17"

class Problem17Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 19, Problem17.new(5)
    assert_solution 21124, Problem17.new(1000)
  end
end
