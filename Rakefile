require "rake/testtask"

task default: ["test:advent", "test:euler"]

namespace :test do
  Rake::TestTask.new(:advent) do |t|
    t.description = "Run Advent of Code tests"
    t.libs = ["lib", "advent", "test/advent"]
    t.warning = true
    t.test_files = FileList["test/advent/**/*_test.rb"]
  end

  Rake::TestTask.new(:euler) do |t|
    t.description = "Run Project Euler tests"
    t.libs = ["lib", "euler", "test/euler"]
    t.warning = true
    t.test_files = FileList["test/euler/**/*_test.rb"]
  end
end
