# Ruby

I started solving problem with Ruby because it was one of the first languages I
learned and took seriously. If you're interested in learning Ruby as well, I
highly recommend reading David A. Black's [The Well-Grounded
Rubyist](http://www.manning.com/black3/) since it will give you the tools you
need to tackle Project Euler problems.

## Tests

    $ ruby tests.rb

If you want to run a specific test, try

    $ ruby tests.rb --name=test_problem1

The workflow for adding new problems is to use TDD with a simplified version of
the problem and a placeholder for the Project Euler-verified version. After
using the Project Euler website to verify (or if the problem was already solved
in a different language) this placeholder can be replaced with a real test.
