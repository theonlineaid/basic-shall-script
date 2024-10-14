The `vi` editor is a powerful text editor available on most Unix-like systems. Here’s a quick guide on how to use `vi` along with some common commands:

### Starting `vi`
To open a file with `vi`, use the following command:
```bash
vi filename
```
If the file does not exist, `vi` will create a new file with that name.

### Basic Modes
`vi` operates in several modes, but the two most important are:
- **Normal Mode**: The default mode when you open `vi`. You can navigate and manipulate text but not directly edit it.
- **Insert Mode**: Used for inserting text. You enter this mode from Normal Mode.

### Switching Modes
- **Enter Insert Mode**: Press `i` to insert text before the cursor, `I` to insert at the beginning of the line, `a` to append after the cursor, and `A` to append at the end of the line.
- **Return to Normal Mode**: Press `Esc` to exit Insert Mode and return to Normal Mode.

### Basic Commands in Normal Mode
Here are some essential commands to navigate and edit text in `vi`:

#### Navigation
- `h`: Move cursor left.
- `j`: Move cursor down.
- `k`: Move cursor up.
- `l`: Move cursor right.
- `0`: Move to the beginning of the line.
- `$`: Move to the end of the line.
- `gg`: Go to the beginning of the file.
- `G`: Go to the end of the file.

#### Editing
- `x`: Delete the character under the cursor.
- `dd`: Delete the current line.
- `yy`: Copy (yank) the current line.
- `p`: Paste the copied line after the current line.
- `u`: Undo the last action.
- `Ctrl + r`: Redo the last undone action.

#### Saving and Exiting
- `:w`: Save (write) the file.
- `:q`: Quit `vi`.
- `:wq`: Save and quit.
- `:q!`: Quit without saving.

### Example Workflow
1. Open a file:
   ```bash
   vi myfile.txt
   ```
2. Press `i` to enter Insert Mode and start typing your text.
3. Press `Esc` when done.
4. Save the file by typing `:w` and then hit `Enter`.
5. Quit `vi` by typing `:q` and then hit `Enter`.

### Additional Tips
- To learn more about `vi`, you can access its built-in tutorial by typing `:help` in Normal Mode.
- If you prefer a more user-friendly editor, consider using `vim` (Vi IMproved), which offers additional features and is often installed alongside `vi`.


## Edit with vi editor

```bash
vi run_all.sh
i = means insert
esc = means quit editor
:w means save
:wq means save and exit # give permission to user
```

## Executing the bash script
To make the script executable, assign execution rights to your user using this command:

```bash
➜  Bash-script ./run_all.sh
zsh: permission denied: ./run_all.sh
➜  Bash-script chmod u+x run_all.sh 


chmod 755
chmod u+x
```