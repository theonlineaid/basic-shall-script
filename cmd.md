The `chmod` command is used in Unix and Linux systems to change the file permissions of a file or directory. Let's break down the three commands you provided to understand their differences:

### 1. `chmod 755 fn.sh`

This command sets the permissions of the file `fn.sh` using **numeric (octal) notation**.

- **Explanation**:
  - The number `755` is composed of three digits, each representing different permission sets:
    - **7** (Owner permissions): Read (4) + Write (2) + Execute (1) = 7
    - **5** (Group permissions): Read (4) + Execute (1) = 5
    - **5** (Others permissions): Read (4) + Execute (1) = 5

- **Result**: The owner can read, write, and execute the file, while the group and others can only read and execute it.

### 2. `chmod +x fn.sh`

This command adds the **execute permission** to the file `fn.sh` for all user categories (owner, group, and others).

- **Explanation**:
  - The `+x` option specifically adds execute permission without altering the existing permissions for the owner, group, or others.

- **Result**: If `fn.sh` initially had permissions like `644` (owner can read and write, group and others can read), after running this command, the permissions will change to `655`, allowing all users to execute the file.

### 3. `chmod u+rx fn.sh`

This command adds **read (r)** and **execute (x)** permissions for the **user (owner)** of the file `fn.sh`.

- **Explanation**:
  - The `u+rx` option modifies only the owner’s permissions:
    - `u` stands for user (the owner).
    - `+r` adds read permission.
    - `+x` adds execute permission.

- **Result**: If the owner had no read or execute permissions initially, this command would grant them those permissions without affecting the permissions of the group or others.

### Summary of Differences

| Command                | Affects         | Resulting Permissions                              | Description                                           |
|-----------------------|-----------------|---------------------------------------------------|-------------------------------------------------------|
| `chmod 755 fn.sh`    | Owner, Group, Others | Owner: rwx<br>Group: r-x<br>Others: r-x | Sets specific permissions using numeric notation.     |
| `chmod +x fn.sh`     | Owner, Group, Others | Adds execute permission to all users, e.g., from 644 to 655 | Adds execute permission without altering other permissions. |
| `chmod u+rx fn.sh`   | Owner           | Adds read and execute permissions only for the owner. | Specifically adds read and execute permissions for the owner only. |

### Example of How Permissions Change

Assuming the initial permissions of `fn.sh` are `644`:

- After `chmod 755 fn.sh`: Permissions change to `rwxr-xr-x`
- After `chmod +x fn.sh`: Permissions change to `rwxr-xr-x` (no change since `755` already includes execute)
- After `chmod u+rx fn.sh`: Permissions remain `rwxr-xr-x` (no change since the owner already has read and execute permissions)

Understanding these differences is crucial for managing file permissions effectively in a Unix/Linux environment!



Here's a concise summary of the differences between the three `chmod` commands:

| Command                | Affects           | Resulting Permissions                       | Description                                           |
|-----------------------|-------------------|--------------------------------------------|-------------------------------------------------------|
| `chmod 755 fn.sh`    | Owner, Group, Others | Owner: `rwx` (7)<br>Group: `r-x` (5)<br>Others: `r-x` (5) | Sets specific permissions using numeric notation. The owner can read, write, and execute; the group and others can read and execute. |
| `chmod +x fn.sh`     | Owner, Group, Others | Adds execute permission to all users (e.g., from `644` to `655`) | Adds execute permission for all users without changing other permissions. |
| `chmod u+rx fn.sh`   | Owner              | Adds read and execute permissions only for the owner (e.g., from `600` to `700`) | Specifically adds read and execute permissions for the owner only, leaving group and others unchanged. |

### Key Points:
- **`chmod 755`**: Sets fixed permissions for owner, group, and others.
- **`chmod +x`**: Adds execute permission for all users, regardless of their current permissions.
- **`chmod u+rx`**: Adds read and execute permissions only for the owner, leaving the permissions for group and others unchanged. 

This summary highlights how each command modifies file permissions in a Unix/Linux environment, ensuring you can choose the right command for your needs!