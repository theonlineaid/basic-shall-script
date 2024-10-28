#!/bin/bash

# Define a local variable
local_var="This is a local variable"

# Function demonstrating local variable scope
function display_local_var {
    echo "Inside function: $local_var"  # This will print the local variable
}

display_local_var  # Output: Inside function: This is a local variable

# Trying to access local_var outside the function
echo "Outside function: $local_var"  # Output: Outside function:


# Define and export an environment variable
export APP_NAME="My Awesome App"

# Function to demonstrate child process access
function run_child {
    echo "Running child process:"
    bash -c 'echo "In child process: $APP_NAME"'  # Accessing the environment variable
}

run_child