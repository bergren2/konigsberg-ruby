require "simplecov"
SimpleCov.start

require "codecov"
SimpleCov.formatter = SimpleCov::Formatter::Codecov

require "minitest/autorun"
require "minitest/parallel"
require "minitest/pride"

require_relative "assertions"
