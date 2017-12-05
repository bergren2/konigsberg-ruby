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
  end
end
