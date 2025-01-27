# Shell Script Conditional Comparison Bug

This repository demonstrates a common, subtle error in shell scripting: using a single equals sign (=) instead of a double equals sign (==) in a conditional statement.  This mistake often leads to unexpected behavior and can be difficult to debug.

## The Bug
The `bug.sh` script attempts to check if a file is `/dev/null`. It incorrectly uses a single equals sign in the conditional statement: `if [ $filename = "/dev/null" ]; then`. This assigns the value "/dev/null" to the variable `$filename`, rather than comparing it.

## The Solution
The `bugSolution.sh` script corrects this issue by using the correct double equals sign for comparison: `if [ "$filename" == "/dev/null" ]; then`.  Note also the importance of quoting variables to prevent word splitting and globbing issues. 

## How to Reproduce
1. Clone this repository.
2. Run `bug.sh`.  Observe the incorrect behavior.
3. Run `bugSolution.sh`. Observe the corrected behavior.

This example highlights the importance of careful attention to detail and proper syntax when writing shell scripts.