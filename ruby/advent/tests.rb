require "minitest/autorun"
require "minitest/parallel"
require "minitest/pride"

require_relative "../assertions.rb"
require_relative "advent_solvable.rb"

sol_glob = File.join(__dir__, "/solutions/*.rb")
Dir[sol_glob].each { |file| require file }

class AdventTests < Minitest::Test
  parallelize_me!

  def test_year2017day1
    assert_solution 3, Year2017Day1.new("1122", 1)
    assert_solution 4, Year2017Day1.new("1111", 1)
    assert_solution 0, Year2017Day1.new("1234", 1)
    assert_solution 9, Year2017Day1.new("91212129", 1)
    assert_solution 1089, Year2017Day1.new("year2017day1.txt", 1)

    assert_solution 6, Year2017Day1.new("1212", 2)
    assert_solution 0, Year2017Day1.new("1221", 2)
    assert_solution 4, Year2017Day1.new("123425", 2)
    assert_solution 12, Year2017Day1.new("123123", 2)
    assert_solution 4, Year2017Day1.new("12131415", 2)
    assert_solution 1156, Year2017Day1.new("year2017day1.txt", 2)
  end

  def test_year2017day2
    assert_solution 18, Year2017Day2.new("year2017day2sheet1.txt", 1)
    assert_solution 32121, Year2017Day2.new("year2017day2sheet2.txt", 1)

    assert_solution 9, Year2017Day2.new("year2017day2sheet3.txt", 2)
    assert_solution 197, Year2017Day2.new("year2017day2sheet2.txt", 2)
  end

  def test_year2017day3
    assert_solution 0, Year2017Day3.new(1, 1)
    assert_solution 2, Year2017Day3.new(9, 1)
    assert_solution 3, Year2017Day3.new(12, 1)
    assert_solution 3, Year2017Day3.new(16, 1)
    assert_solution 2, Year2017Day3.new(23, 1)
    assert_solution 5, Year2017Day3.new(36, 1)
    assert_solution 31, Year2017Day3.new(1024, 1)
    assert_solution 419, Year2017Day3.new(289326, 1)

    assert_solution 1, Year2017Day3.new(0, 2)
    assert_solution 2, Year2017Day3.new(1, 2)
    assert_solution 10, Year2017Day3.new(5, 2)
    assert_solution 11, Year2017Day3.new(10, 2)
    assert_solution 23, Year2017Day3.new(15, 2)
    assert_solution 23, Year2017Day3.new(20, 2)
    assert_solution 54, Year2017Day3.new(50, 2)
    assert_solution 122, Year2017Day3.new(100, 2)
    assert_solution 295229, Year2017Day3.new(289326, 2)
  end

  def test_year2017day4
    assert_solution 383, Year2017Day4.new("year2017day4.txt", 1)

    assert_solution 265, Year2017Day4.new("year2017day4.txt", 2)
  end

  def test_year2017day5
    assert_solution 5, Year2017Day5.new("year2017day5_1.txt", 1)
    assert_solution 381680, Year2017Day5.new("year2017day5_2.txt", 1)

    assert_solution 10, Year2017Day5.new("year2017day5_1.txt", 2)
    assert_solution 29717847, Year2017Day5.new("year2017day5_2.txt", 2)
  end

  def test_year2017day6
    assert_solution 5, Year2017Day6.new([0, 2, 7, 0], 1)
    assert_solution 7864, Year2017Day6.new([
      0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11
    ], 1)

    assert_solution 4, Year2017Day6.new([0, 2, 7, 0], 2)
    assert_solution 1695, Year2017Day6.new([
      0, 5, 10, 0, 11, 14, 13, 4, 11, 8, 8, 7, 1, 4, 12, 11
    ], 2)
  end

  def test_year2017day7
    assert_solution "tknk", Year2017Day7.new("year2017day7_1.txt", 1)
    assert_solution "mwzaxaj", Year2017Day7.new("year2017day7_2.txt", 1)

    assert_solution 60, Year2017Day7.new("year2017day7_1.txt", 2)
    assert_solution 1219, Year2017Day7.new("year2017day7_2.txt", 2)
  end

  def test_year2017day8
    assert_solution 1, Year2017Day8.new("year2017day8_1.txt", 1)
    assert_solution 3745, Year2017Day8.new("year2017day8_2.txt", 1)

    assert_solution 10, Year2017Day8.new("year2017day8_1.txt", 2)
    assert_solution 4644, Year2017Day8.new("year2017day8_2.txt", 2)
  end

  def test_year2017day9
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

  def test_year2017day10
    assert_solution 38415, Year2017Day10.new("189,1,111,246,254,2,0,120,215,93,255,50,84,15,94,62", 1)

    assert_solution "a2582a3a0e66e6e86e3812dcb672a272", Year2017Day10.new("", 2)
    assert_solution "33efeb34ea91902bb2f59c9920caa6cd", Year2017Day10.new("AoC 2017", 2)
    assert_solution "3efbe78a8d82f29979031a4aa0b16a9d", Year2017Day10.new("1,2,3", 2)
    assert_solution "63960835bcdc130f0b66d7ff4f6a5a8e", Year2017Day10.new("1,2,4", 2)
    assert_solution "9de8846431eef262be78f590e39a4848", Year2017Day10.new("189,1,111,246,254,2,0,120,215,93,255,50,84,15,94,62", 2)
  end
end
