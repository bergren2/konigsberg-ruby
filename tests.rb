require "test/unit"
require "./solutions/1"
# TODO use below to load all solutions for testing
# Dir["./solutions/*.rb"].each {|file| require file }

class EulerTests < Test::Unit::TestCase
  def test_problem1()
    assert_equal(23, Problem1.solve(10))
    assert_equal(233168, Problem1.solve(1000))
  end
end
