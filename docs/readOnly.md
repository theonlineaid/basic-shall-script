In shell scripting, you can make a variable **read-only**, meaning it cannot be modified or unset after it’s been assigned. This is useful for defining constants or values that should remain unchanged throughout the script.

### Declaring a Read-Only Variable
To make a variable read-only, you use the `readonly` command.

#### Example:
```bash
#!/bin/bash

# Define a read-only variable
readonly PI=3.14159

# Attempting to modify the variable will result in an error
PI=3.14  # Error: bash: PI: readonly variable

# You also can't unset a read-only variable
unset PI  # Error: bash: unset: PI: cannot unset: readonly variable
```

In this example:
- `PI` is set to `3.14159`.
- Any attempt to change the value of `PI` or unset it will result in an error.

### Read-Only Variables for System Configurations
Read-only variables are especially useful for setting configuration values, constants, or paths in scripts that shouldn't be altered during the script's execution.

#### Example with Paths:
```bash
#!/bin/bash

readonly CONFIG_PATH="/etc/myapp/config"
readonly USERNAME="admin"

echo "Configuration Path: $CONFIG_PATH"
echo "Username: $USERNAME"

# Any attempt to change CONFIG_PATH or USERNAME will result in an error
```

### Checking Read-Only Variables
You can use the `readonly` command without any arguments to list all read-only variables in the current shell.

```bash
readonly
```

### Using `declare` for Read-Only Variables
Another way to declare a variable as read-only in `bash` is with `declare -r`.

#### Example:
```bash
declare -r PORT=8080
echo "Server Port: $PORT"
```

### Summary
- Use `readonly` to make a variable immutable.
- Attempts to modify or unset a read-only variable will fail with an error.
- `readonly` variables are ideal for constants or settings that should not change during script execution.