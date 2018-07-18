require "rake/testtask"

namespace :test do
  Rake::TestTask.new(:advent) do |t|
    t.description = "Run Advent of Code tests"
    t.libs = ["lib"]
    t.warning = true
    t.test_files = FileList["advent/tests/**/*_test.rb"]
  end

  Rake::TestTask.new(:euler) do |t|
    t.description = "Run Project Euler tests"
    t.libs = ["lib"]
    t.warning = true
    t.test_files = FileList["euler/tests/**/*_test.rb"]
  end
end
