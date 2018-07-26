require "test_helper"
require "collatz"

class CollatzTest < Minitest::Test
  parallelize_me!

  def test_to_s
    # Arrange
    c = CollatzNode.new(13)

    # Act
    s = c.to_s

    # Assert
    assert_equal "13", s
  end

  def test_predecessors
    # Arrange
    c = CollatzNode.new(16)

    # Act
    p = c.predecessors

    # Assert
    assert_includes p, CollatzNode.new(5)
    assert_includes p, CollatzNode.new(32)
  end
end
