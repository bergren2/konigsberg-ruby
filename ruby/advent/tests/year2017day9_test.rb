require_relative "test_helper"
require_relative "../solutions/year2017day9"

class Year2017Day9Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 1, Year2017Day9.new("{}", 1)
    assert_solution 6, Year2017Day9.new("{{{}}}", 1)
    assert_solution 5, Year2017Day9.new("{{},{}}", 1)
    assert_solution 16, Year2017Day9.new("{{{},{},{{}}}}", 1)
    assert_solution 1, Year2017Day9.new("{<a>,<a>,<a>,<a>}", 1)
    assert_solution 9, Year2017Day9.new("{{<ab>},{<ab>},{<ab>},{<ab>}}", 1)
    assert_solution 9, Year2017Day9.new("{{<!!>},{<!!>},{<!!>},{<!!>}}", 1)
    assert_solution 3, Year2017Day9.new("{{<a!>},{<a!>},{<a!>},{<ab>}}", 1)
    assert_solution 1, Year2017Day9.new("{<>}", 1)
    assert_solution 1, Year2017Day9.new("{<random characters>}", 1)
    assert_solution 1, Year2017Day9.new("{<<<<>}", 1)
    assert_solution 1, Year2017Day9.new("{<{!>}>}", 1)
    assert_solution 1, Year2017Day9.new("{<!!>}", 1)
    assert_solution 1, Year2017Day9.new("{<!!!>>}", 1)
    assert_solution 1, Year2017Day9.new("{<{o\"i!a,<{i<a>}", 1)
    assert_solution 14212, Year2017Day9.new("year2017day9.txt", 1)
  end

  def test_part2
    assert_solution 0, Year2017Day9.new("{}", 2)
    assert_solution 0, Year2017Day9.new("{{{}}}", 2)
    assert_solution 0, Year2017Day9.new("{{},{}}", 2)
    assert_solution 0, Year2017Day9.new("{{{},{},{{}}}}", 2)
    assert_solution 4, Year2017Day9.new("{<a>,<a>,<a>,<a>}", 2)
    assert_solution 8, Year2017Day9.new("{{<ab>},{<ab>},{<ab>},{<ab>}}", 2)
    assert_solution 0, Year2017Day9.new("{{<!!>},{<!!>},{<!!>},{<!!>}}", 2)
    assert_solution 17, Year2017Day9.new("{{<a!>},{<a!>},{<a!>},{<ab>}}", 2)
    assert_solution 0, Year2017Day9.new("{<>}", 2)
    assert_solution 17, Year2017Day9.new("{<random characters>}", 2)
    assert_solution 3, Year2017Day9.new("{<<<<>}", 2)
    assert_solution 2, Year2017Day9.new("{<{!>}>}", 2)
    assert_solution 0, Year2017Day9.new("{<!!>}", 2)
    assert_solution 0, Year2017Day9.new("{<!!!>>}", 2)
    assert_solution 10, Year2017Day9.new("{<{o\"i!a,<{i<a>}", 2)
    assert_solution 6569, Year2017Day9.new("year2017day9.txt", 2)
  end
end
