![Build Status](https://github.com/bergren2/konigsberg-ruby/workflows/.github/workflows/workflow.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/599410792e9ca585f432/maintainability)](https://codeclimate.com/github/bergren2/konigsberg-ruby/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/599410792e9ca585f432/test_coverage)](https://codeclimate.com/github/bergren2/konigsberg-ruby/test_coverage)

# [Königsberg](https://github.com/bergren2/konigsberg) - Ruby

I started solving problem with Ruby because it was one of the first languages I
learned and took seriously. If you're interested in learning Ruby as well, I
highly recommend reading David A. Black's [The Well-Grounded
Rubyist](http://www.manning.com/black3/) since it will give you the tools you
need to tackle problems.

## Tests

You can run specific sets of problems like this:

    $ rake test:advent

If you want to run a specific test, try

    $ rake test:advent TEST=test/advent/2017/year2017day1_test

The workflow for adding new problems is to use TDD with a simplified version of
the problem and a `nil` placeholder for the site-verifiable version. After using
the Project Euler website to verify (or if the problem was already solved in a
different language) this placeholder can be replaced with a real test.
