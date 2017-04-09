require "minitest/autorun"
require "minitest/pride"

require "./assertions.rb"
require "./lib/euler_project.rb"

Dir["./solutions/*.rb"].each { |file| require file }

class EulerTests < Minitest::Test
  def test_problem1
    assert_solution 23, Problem1.new(10)
    assert_solution 233168, Problem1.new(1000)
  end

  def test_problem2
    assert_solution 44, Problem2.new(90)
    assert_solution 4613732, Problem2.new(4000000)
  end

  def test_problem3
    assert_solution 29, Problem3.new(13195)
    assert_solution 6857, Problem3.new(600851475143)
  end

  def test_problem4
    assert_solution 9009, Problem4.new(2)
    assert_solution 906609, Problem4.new(3)
  end

  def test_problem5
    assert_solution 2520, Problem5.new(10)
    assert_solution 232792560, Problem5.new(20)
  end

  def test_problem6
    assert_solution 2640, Problem6.new(10)
    assert_solution 25164150, Problem6.new(100)
  end

  def test_problem7() skip end
  def test_problem8() skip end
  def test_problem9() skip end
  def test_problem10() skip end
  def test_problem11() skip end
  def test_problem12() skip end
  def test_problem13() skip end
  def test_problem14() skip end
  def test_problem15() skip end
  def test_problem16() skip end
  def test_problem17() skip end

  def test_problem18
    assert_solution 23, Problem18.new("mps4.txt")
    assert_solution 1074, Problem18.new("mps15.txt")
  end

  def test_problem19
    assert_solution 171, Problem19.new()
  end

  def test_problem20
    assert_solution 27, Problem20.new(10)
    assert_solution 648, Problem20.new(100)
  end

  def test_problem25() skip end

  def test_problem67
    assert_solution 7273, Problem67.new("mps100.txt")
  end
end
