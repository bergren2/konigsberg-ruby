require "test_helper"
require "intcode"

class IntcodeTest < Minitest::Test
  parallelize_me!

  def test_run
    assert_equal 3500,  Intcode.new([1, 9, 10, 3, 2, 3, 11, 0, 99, 30, 40, 50]).run
    assert_equal 2,     Intcode.new([1, 0, 0, 0, 99]).run
    assert_equal 2,     Intcode.new([2, 3, 0, 3, 99]).run
    assert_equal 2,     Intcode.new([2, 4, 4, 5, 99, 0]).run
    assert_equal 30,    Intcode.new([1, 1, 1, 4, 99, 5, 6, 0, 99]).run
  end
end
