# README

This repository contains a Ruby implementation of a String Calculator, developed using Test-Driven Development (TDD) principles.
The calculator can add numbers provided in a string, supporting custom delimiters and various input formats.

## Features

    •	Handles an empty string as input, returning 0.
    •	Adds numbers separated by commas or newlines.
    •	Supports custom single-character and multi-character delimiters.
    •	Raises an exception for negative numbers, listing all negative numbers provided.

## Requirements

    •	Ruby
    •	RSpec

## Usage

The main class is StringCalculator, which contains the add method and processes the input string and returns the sum of the numbers.

## Running Tests

To run the tests, you need to have RSpec installed.
. gem install rspec

Run the tests with the following command:
. rspec string_calculator_spec.rb
