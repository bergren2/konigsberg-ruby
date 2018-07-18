require_relative "test_helper"
require_relative "../solutions/year2017day1"

class Year2017Day1Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 3, Year2017Day1.new("1122", 1)
    assert_solution 4, Year2017Day1.new("1111", 1)
    assert_solution 0, Year2017Day1.new("1234", 1)
    assert_solution 9, Year2017Day1.new("91212129", 1)
    assert_solution 1089, Year2017Day1.new("year2017day1.txt", 1)
  end

  def test_part2
    assert_solution 6, Year2017Day1.new("1212", 2)
    assert_solution 0, Year2017Day1.new("1221", 2)
    assert_solution 4, Year2017Day1.new("123425", 2)
    assert_solution 12, Year2017Day1.new("123123", 2)
    assert_solution 4, Year2017Day1.new("12131415", 2)
    assert_solution 1156, Year2017Day1.new("year2017day1.txt", 2)
  end
end
