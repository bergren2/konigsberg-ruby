require "test_helper"
require "year2017day9"

class AdventYear2017Day9Test < Minitest::Test
  parallelize_me!

  def test_part1
    assert_solution 1,      Advent::Year2017Day9.new("{}", 1)
    assert_solution 6,      Advent::Year2017Day9.new("{{{}}}", 1)
    assert_solution 5,      Advent::Year2017Day9.new("{{},{}}", 1)
    assert_solution 16,     Advent::Year2017Day9.new("{{{},{},{{}}}}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<a>,<a>,<a>,<a>}", 1)
    assert_solution 9,      Advent::Year2017Day9.new("{{<ab>},{<ab>},{<ab>},{<ab>}}", 1)
    assert_solution 9,      Advent::Year2017Day9.new("{{<!!>},{<!!>},{<!!>},{<!!>}}", 1)
    assert_solution 3,      Advent::Year2017Day9.new("{{<a!>},{<a!>},{<a!>},{<ab>}}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<random characters>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<<<<>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<{!>}>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<!!>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<!!!>>}", 1)
    assert_solution 1,      Advent::Year2017Day9.new("{<{o\"i!a,<{i<a>}", 1)
    assert_solution 14212,  Advent::Year2017Day9.new("year2017day9.txt", 1)
  end

  def test_part2
    assert_solution 0,    Advent::Year2017Day9.new("{}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{{{}}}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{{},{}}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{{{},{},{{}}}}", 2)
    assert_solution 4,    Advent::Year2017Day9.new("{<a>,<a>,<a>,<a>}", 2)
    assert_solution 8,    Advent::Year2017Day9.new("{{<ab>},{<ab>},{<ab>},{<ab>}}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{{<!!>},{<!!>},{<!!>},{<!!>}}", 2)
    assert_solution 17,   Advent::Year2017Day9.new("{{<a!>},{<a!>},{<a!>},{<ab>}}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{<>}", 2)
    assert_solution 17,   Advent::Year2017Day9.new("{<random characters>}", 2)
    assert_solution 3,    Advent::Year2017Day9.new("{<<<<>}", 2)
    assert_solution 2,    Advent::Year2017Day9.new("{<{!>}>}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{<!!>}", 2)
    assert_solution 0,    Advent::Year2017Day9.new("{<!!!>>}", 2)
    assert_solution 10,   Advent::Year2017Day9.new("{<{o\"i!a,<{i<a>}", 2)
    assert_solution 6569, Advent::Year2017Day9.new("year2017day9.txt", 2)
  end
end
