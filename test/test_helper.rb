require "codacy-coverage"
require "coveralls"
Codacy::Reporter.start
Coveralls.wear!

require "minitest/autorun"
require "minitest/parallel"
require "minitest/pride"

require_relative "assertions"
