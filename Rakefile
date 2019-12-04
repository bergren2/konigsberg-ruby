require "rake/testtask"

module Libs
  def self.base
    %w[
      test
      lib
    ]
  end

  def self.advent
    %w[
      advent
      advent/2017
      advent/2018
      advent/2019
    ]
  end

  def self.euler
    %w[
      euler
    ]
  end
end

task default: "test:all"

namespace :test do
  Rake::TestTask.new(:all) do |t|
    t.description = "Run all tests"
    t.libs = Libs.base + Libs.advent + Libs.euler
    t.warning = true
    t.test_files = FileList["test/**/*_test.rb"]
  end

  Rake::TestTask.new(:advent) do |t|
    t.description = "Run Advent of Code tests"
    t.libs = Libs.base + Libs.advent
    t.warning = true
    t.test_files = FileList["test/advent/**/*_test.rb"]
  end

  Rake::TestTask.new(:euler) do |t|
    t.description = "Run Project Euler tests"
    t.libs = Libs.base + Libs.euler
    t.warning = true
    t.test_files = FileList["test/euler/**/*_test.rb"]
  end
  Rake::TestTask.new(:lib) do |t|
    t.description = "Run lib tests"
    t.libs = Libs.base
    t.warning = true
    t.test_files = FileList["test/lib/**/*_test.rb"]
  end
end
