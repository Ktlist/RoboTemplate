#!/bin/bash

# Navigate to the project directory
cd "$(dirname "$0")/.."

# Run Robot Framework tests
robot --outputdir results tests/

# Check if tests passed
if [ $? -eq 0 ]; then
    echo "All tests passed."
else
    echo "Some tests failed. Check the results in the 'results' directory."
    exit 1
fi