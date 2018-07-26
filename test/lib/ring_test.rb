require "test_helper"
require "ring"

class RingTest < Minitest::Test
  parallelize_me!

  def test_enumerable_constructor
    # Arrange
    r = Ring.new([0, 1, 2, 3, 4])

    # Act
    # Assert
    assert_equal(r[0], 0)
    assert_equal(r[1], 1)
    assert_equal(r[2], 2)
    assert_equal(r[5], 0)
    assert_equal(r[6], 1)
    assert_equal(r[7], 2)

    assert_equal(r.size, 5)
  end

  def test_to_s
    # Arrange
    a1 = [0, 1, 2, 3, 4]
    a2 = %w[hey what is up]
    r1 = Ring.new(a1)
    r2 = Ring.new(a2)

    # Act
    s1 = r1.to_s
    s2 = r2.to_s

    # Assert
    assert_equal(s1, "[0, 1, 2, 3, 4]")
    assert_enum_equal(a1, r1.to_a)

    assert_equal(s2, '["hey", "what", "is", "up"]')
    assert_enum_equal(a2, r2.to_a)
  end
end
