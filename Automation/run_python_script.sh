#!/bin/bash

# Define the Python script and environment
PYTHON_SCRIPT="pys.py"
PYTHON_EXEC="python3"  # Use python3 or python depending on your setup
LOG_FILE="script_log.txt"

# Print a starting message
echo "Starting the Python script automation..."

# Check if the Python script exists
if [ -f "$PYTHON_SCRIPT" ]; then
    echo "Found Python script: $PYTHON_SCRIPT"
    echo "Running script..."
    
    # Run the Python script and save the output to a log file
    $PYTHON_EXEC "$PYTHON_SCRIPT" > "$LOG_FILE" 2>&1

    if [ $? -eq 0 ]; then
        echo "Script executed successfully. Output logged to $LOG_FILE."
    else
        echo "Script execution failed. Check $LOG_FILE for details."
    fi
else
    echo "Error: Python script $PYTHON_SCRIPT not found!"
    exit 1
fi

# Print a completion message
echo "Automation completed."
