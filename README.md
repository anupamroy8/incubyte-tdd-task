# String Calculator TDD Kata

## Overview
A simple **String Calculator** built using Test-Driven Development (TDD). Parses a string of numbers with various delimiters and returns their sum.

## Features
- **Empty String:** Returns `0`.
- **Single Number:** Returns the number itself.
- **Two or More Numbers:** Returns their sum.
- **Newline Delimiter:** Handles `\n` as a delimiter.
- **Custom Delimiters:** Supports custom delimiters like `//;\n1;2`.
- **Negative Numbers:** Throws an exception listing all negative numbers.

## Setup & Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/anupamroy8/incubyte-tdd-task.git
   cd incubyte-tdd-task
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

## Running Tests

You can run the tests in two ways:

1. Using bundle exec (recommended):
   ```bash
   bundle exec rspec .
   ```

2. Direct RSpec command:
   ```bash
   rspec string_calculator_spec.rb
   ```
