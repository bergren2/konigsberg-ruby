require "minitest/autorun"
require "minitest/pride"

Dir["./solutions/*.rb"].each { |file| require file }

class EulerTests < Minitest::Test
  def test_problem1()
    assert_equal(23, Problem1.solve(10))
    assert_equal(233168, Problem1.solve(1000))
  end

  def test_problem2()
    assert_equal(4613732, Problem2.solve())
  end

  def test_problem3()
    assert_equal(29, Problem3.solve(13195))
    assert_equal(6857, Problem3.solve(600851475143))
  end

  def test_problem4() skip end
  def test_problem5() skip end
  def test_problem6() skip end
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
  def test_problem25() skip end
end
