# Project Euler

Project Euler programs.

[![Project Euler Badge](https://projecteuler.net/profile/bergren2.png)](https://projecteuler.net/profile/bergren2.png)

## What is this?

I use this repository to track solutions I have come up with for [Project Euler
problems](https://projecteuler.net/problems). Solutions are sorted into
different directories based on language, and then further separated by problem
ID. If I've solved several problems with a particular language, there will
usually be advanced features such as test suites and libraries.

I know this goes without saying, but **these are solutions**. You should really
take a stab at the problems themselves before looking at this code.

### What language are you using?

I originally intended to use Project Euler as a way to learn new languages.
After sitting on that strategy for some time and seeing how it worked as the
problems became more difficult, I realized I'm better off using one language
_really, really_ well and learnings its ins-and-outs -- hence, most of the
solutions here are first implemented in Ruby.

Now that I have a few more problems under my belt, I have started writing
solutions in other languages. Most of the time this starts out as a straight
translation from one language to another, but it often means I can become
familiar with a new language without needing to first understand the math, and
it also can sometimes lead to using a particular language's feature to solve a
problem in a different way.

## Setup

This concerns overall project setup -- individual language directories have
their own READMEs to describe their setup.

### Prereqs

- [Yarn](https://yarnpkg.com/en/)
- [Gulp](http://gulpjs.com/)

### Installation

    $ yarn install

### GitHub Pages

    $ gulp deploy

For simplicity, the Gulp build script makes the assumption that
everything on `master` is a valid solution -- this way it can count solution
files without needing to run anything in each language.
