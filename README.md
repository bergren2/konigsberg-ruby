[![Codeship Status](https://app.codeship.com/projects/dcf43420-e4bf-0137-799a-0ac16517213a/status?branch=master)](https://app.codeship.com/projects/373389)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a8961f8c4c224c90bf8aaa837a7694e0)](https://www.codacy.com/app/basstheorychaos/konigsberg-ruby?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=bergren2/konigsberg-ruby&amp;utm_campaign=Badge_Grade)
[![codecov](https://codecov.io/gh/bergren2/konigsberg-ruby/branch/master/graph/badge.svg)](https://codecov.io/gh/bergren2/konigsberg-ruby)

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
