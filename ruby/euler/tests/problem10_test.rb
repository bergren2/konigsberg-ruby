require_relative "test_helper"
require_relative "../solutions/10"

class Problem10Test < Minitest::Test
  parallelize_me!

  def test_solution
    assert_solution 17, Problem10.new(10)
    assert_solution 142913828922, Problem10.new(2000000)
  end
end
