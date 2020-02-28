# CodeSignal Ruby

Ruby solutions for the CodeSignal challenges.

Profile: [albertoms | CodeSignal](https://app.codesignal.com/profile/albertoms)

I used Visual Studio Code to solve the challenges using the TDD approach. For each exercise, I took some of the testing values (input and expected output) to recreate the test in my local environment using Minitest. This enabled me to try more ideas and debug faster than writing the code directly in the CodeSignal editor.

## Running tests

I'm using Bundler as the package manager, which takes care of the required gems for the test file.

### Run the complete suite
```
> rake test
```
*See Rakefile.*

### Run a single test case

For example, to execute the test for the `almost_increasing_sequence` method in the `lib/arcade/intro/edge_of_the_ocean.rb`, run the following command:
```
> rake test TEST=test/arcade/intro/test_edge_of_the_ocean.rb TESTOPTS="--name=test_almost_increasing_sequence -v"
```