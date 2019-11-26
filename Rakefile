require "rake/testtask"

task default: "test:all"

namespace :test do
  Rake::TestTask.new(:all) do |t|
    t.description = "Run all tests"
    t.libs = %w[
      test
      lib
      advent
      advent/2017
      advent/2018
      euler
    ]
    t.warning = true
    t.test_files = FileList["test/**/*_test.rb"]
  end

  Rake::TestTask.new(:advent) do |t|
    t.description = "Run Advent of Code tests"
    t.libs = %w[
      test
      lib
      advent
      advent/2017
      advent/2018
    ]
    t.warning = true
    t.test_files = FileList["test/advent/**/*_test.rb"]
  end

  Rake::TestTask.new(:euler) do |t|
    t.description = "Run Project Euler tests"
    t.libs = %w[test lib euler]
    t.warning = true
    t.test_files = FileList["test/euler/**/*_test.rb"]
  end
  Rake::TestTask.new(:lib) do |t|
    t.description = "Run lib tests"
    t.libs = %w[test lib]
    t.warning = true
    t.test_files = FileList["test/lib/**/*_test.rb"]
  end
end
