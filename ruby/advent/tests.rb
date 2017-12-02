require "minitest/autorun"
require "minitest/parallel"
require "minitest/pride"

require_relative "../assertions.rb"
require_relative "advent_solvable.rb"

sol_glob = File.join(__dir__, "/solutions/*.rb")
Dir[sol_glob].each { |file| require file }

class AdventTests < Minitest::Test
  parallelize_me!

  def test_year2017day1part1
    assert_solution 3, Year2017Day1Part1.new("1122")
    assert_solution 4, Year2017Day1Part1.new("1111")
    assert_solution 0, Year2017Day1Part1.new("1234")
    assert_solution 9, Year2017Day1Part1.new("91212129")
    assert_solution 1089, Year2017Day1Part1.new("year2017day1part1.txt")
  end
end
