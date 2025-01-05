import os
import sys
from datetime import datetime

# Example: A script that logs a message with the current date and time

def log_message():
    log_file = "output.log"
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    message = f"Script ran successfully at {current_time}"

    # Write the message to a log file
    with open(log_file, "a") as file:
        file.write(message + "\n")

    print(message)

if __name__ == "__main__":
    try:
        print("Running the script...")
        log_message()
        print("Script execution completed.")
    except Exception as e:
        print(f"An error occurred: {e}", file=sys.stderr)
        sys.exit(1)
