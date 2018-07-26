require "minitest/assertions"

module Minitest::Assertions
  def assert_solution solution, problem
    assert_equal solution, problem.solution
  end

  def assert_enum_equal correct, input
    correct.each_with_index do |i, index|
      return false unless i.eql? input[index]
    end

    true
  end
end
