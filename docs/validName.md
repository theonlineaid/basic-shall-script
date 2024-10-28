In shell scripting, variable names follow specific rules to avoid conflicts with special characters that the shell interprets differently. Here’s a quick summary of these rules and conventions:

### Rules for Shell Variable Names
1. **Allowed Characters**: Variable names can contain letters (`a-z`, `A-Z`), numbers (`0-9`), and underscores (`_`).
2. **Start with a Letter or Underscore**: A variable name must begin with a letter or an underscore, not a number.
3. **Avoid Special Characters**: Symbols like `!`, `*`, `-`, and spaces cannot be used because they have specific functions in the shell.

### Examples of Valid Variable Names
- `_ALI`
- `TOKEN_A`
- `VAR_1`
- `VAR_2`

### Examples of Invalid Variable Names
- `2_VAR` (starts with a number)
- `-VARIABLE` (starts with a dash)
- `VAR1-VAR2` (contains a dash)
- `VAR_A!` (contains an exclamation mark)

### Convention
By convention, environment and shell variables are often written in **uppercase** to distinguish them from other variables or functions within scripts. Following these rules helps avoid unexpected behavior or syntax errors in your scripts.