In Bash scripting, there are three primary types of loops that you can use to perform repetitive tasks:

### 1. `for` Loop

The `for` loop is used to iterate over a list of items, such as an array or a sequence of numbers.

**Example: Iterating Over an Array**

```bash
fruits=("apple" "banana" "cherry")

for fruit in "${fruits[@]}"; do
    echo "$fruit"
done
```

**Example: Using a Sequence**

```bash
for i in {1..5}; do
    echo "Number: $i"
done
```

### 2. `while` Loop

The `while` loop continues to execute a block of commands as long as a specified condition is true.

**Example: Basic `while` Loop**

```bash
count=1

while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done
```

### 3. `until` Loop

The `until` loop is similar to the `while` loop but continues until a specified condition becomes true.

**Example: Basic `until` Loop**

```bash
count=1

until [ $count -gt 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done
```

### Summary of Loop Types

1. **`for` Loop**: Iterates over a list of items or a sequence.
2. **`while` Loop**: Executes commands as long as the condition is true.
3. **`until` Loop**: Executes commands until the condition becomes true.

### Additional Loop Control Statements

In addition to these loop constructs, Bash also supports the following control statements:

- **`break`**: Exits the loop prematurely.
- **`continue`**: Skips the current iteration and continues with the next one.

### Example of Using `break` and `continue`

```bash
for i in {1..10}; do
    if [ $i -eq 5 ]; then
        continue  # Skip the number 5
    fi
    echo "Number: $i"
    if [ $i -eq 8 ]; then
        break  # Exit the loop when the number is 8
    fi
done
```

### Conclusion

In total, Bash provides three primary types of loops (`for`, `while`, and `until`) along with control statements to manage loop execution effectively. If you have any further questions or need more examples on loops in Bash, feel free to ask!