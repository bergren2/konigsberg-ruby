require "minitest/assertions"

module Minitest::Assertions
  def assert_solution solution, problem
    assert_equal solution, problem.solution
  end
end
