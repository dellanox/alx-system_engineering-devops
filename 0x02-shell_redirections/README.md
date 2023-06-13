# 0x02. Shell, I/O Redirections and Filters

## About Bash Projects
Unless stated otherwise, all the projects in this directory will be auto-corrected using Ubuntu 20.04 LTS.

## Resources
Read or watch:

- [Shell, I/O Redirection](https://www.gnu.org/software/bash/manual/html_node/Redirections.html)
- [Special Characters](https://mywiki.wooledge.org/BashGuide/SpecialCharacters)
- `man` or `help`:
  - `echo`
  - `cat`
  - `head`
  - `tail`
  - `find`
  - `wc`
  - `sort`
  - `uniq`
  - `grep`
  - `tr`
  - `rev`
  - `cut`
  - `passwd` (5) (i.e. `man 5 passwd`)

## Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:

- Shell, I/O Redirection
- What do the commands `head`, `tail`, `find`, `wc`, `sort`, `uniq`, `grep`, `tr` do
- How to redirect standard output to a file
- How to get standard input from a file instead of the keyboard
- How to send the output from one program to the input of another program
- How to combine commands and filters with redirections
- Special Characters
- What are special characters
- Understand what the white spaces, single quotes, double quotes, backslash, comment, pipe, command separator, tilde are, and how and when to use them

## Other Man Pages
- How to display a line of text
- How to concatenate files and print on the standard output
- How to reverse a string
- How to remove sections from each line of files
- What is the `/etc/passwd` file and what is its format
- What is the `/etc/shadow` file and what is its format

## Copyright - Plagiarism
You are tasked to come up with solutions for the tasks below yourself to meet the above learning objectives.
You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
You are not allowed to publish any content of this project.
Any form of plagiarism is strictly forbidden and will result in removal from the program.

## Requirements
### General
- Allowed editors: `vi`, `vim`, `emacs`
- All your scripts will be tested on Ubuntu 20.04 LTS
- All your scripts should be exactly two lines long (`$ wc -l file` should print `2`)
- All your files should end with a new line
- The first line of all your files should be exactly `#!/bin/bash`
- A `README.md` file, at the root of the folder of the project, describing what each script is doing
- You are not allowed to use backticks, `&&`, `||` or `;`
- All your files must be executable
- You are not allowed to use `sed` or `awk`

**More Info**
Read your `/etc/passwd` and `/etc/shadow` files.

Note: You do not have to learn about `fmt`, `pr`, `du`, `gzip`, `tar`, `lpr`, `sed` and `awk` yet.

## Tasks


### 0-hello_world

- **Purpose**: This script displays the message "Hello, World".
- **Implementation**:

```bash
#!/bin/bash
echo "Hello, World"


### 1-confused_smiley

- **Purpose**: This script displays a confused smiley.
- **Implementation**:

```bash
#!/bin/bash
echo -e "\"(\u00d4o)'"

### 2-hellofile

- **Purpose**: This script displays the contents of the `/etc/passwd` file.
- **Implementation**:

```bash
#!/bin/bash
cat /etc/passwd

### 3-twofiles

- **Purpose**: This script displays the contents of both the `/etc/passwd` and `/etc/hosts` files.
- **Implementation**:

```bash
#!/bin/bash
cat /etc/passwd /etc/hosts

### 4-lastlines

- **Purpose**: This script displays the last few lines of the `/etc/passwd` file.
- **Implementation**:

```bash
#!/bin/bash
tail /etc/passwd

### 5-firstlines

- **Purpose**: This script displays the first few lines of the `/etc/passwd` file.
- **Implementation**:

```bash
#!/bin/bash
head /etc/passwd

### 6-third_line

- **Purpose**: This script displays the third line of the file named `iacta`.
- **Implementation**:
```bash
#!/bin/bash
cat iacta | head -n 3 | tail -n 1

### 7-file

- **Purpose**: This script creates a file named `*\\\\"'\"Best School\"\\'"\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*:\)` and writes the text "Best School" into it.
- **Implementation**:
```bash
#!/bin/bash
echo "Best School" > \\\*\\\\"'\"Best School\"\\'"\\\\\*\$\\\?\\\*\\\*\\\*\\\*\\\*:\)

### 8-cwd_state

- **Purpose**: This script lists the files and directories in the current working directory and saves the output to a file named `ls_cwd_content`.
- **Implementation**:
```bash
#!/bin/bash
ls -la > ls_cwd_content

### 9-duplicate_last_line

- **Purpose**: This script appends the last line of the file `iacta` to the same file.
- **Implementation**:
```bash
#!/bin/bash
tail -n 1 < iacta >> iacta

### 10-no_more_js

- **Purpose**: This script deletes all files with the extension ".js" in the current directory and its subdirectories.
- **Implementation**:
```bash
#!/bin/bash
find . -type f -name "*.js" -delete

### 11-directories

- **Purpose**: This script counts the number of directories in the current directory (excluding hidden directories).
- **Implementation**:
```bash
#!/bin/bash
find . -type d -not -path "./.*" -not -path "." -not -path ".." | wc -l

### 12-newest_files

- **Purpose**: This script lists the newest files in the current directory.
- **Implementation**:
```bash
#!/bin/bash
ls -t1 | head

### 13-unique

- **Purpose**: This script filters out duplicate lines in a file and displays only the unique lines.
- **Implementation**:
```bash
#!/bin/bash
sort | uniq -u

### 14-findthatword

- **Purpose**: This script searches for the word "root" in the file `/etc/passwd`.
- **Implementation**:
```bash
#!/bin/bash
grep "root" /etc/passwd

### 15-countthatword

- **Purpose**: This script counts the occurrences of the word "bin" in the file `/etc/passwd`.
- **Implementation**:
```bash
#!/bin/bash
grep -c "bin" /etc/passwd

### 16-whatsnext

- **Purpose**: This script prints the lines containing the word "root" in the file `/etc/passwd` along with the following three lines.
- **Implementation**:
```bash
#!/bin/bash
grep -A3 'root' /etc/passwd

File: ./17-hidethisword
-------------------------
#!/bin/bash
grep -v "bin" /etc/passwd

### 18-letteronly

- **Purpose**: This script prints the lines from the file `/etc/ssh/sshd_config` that start with a letter (case-insensitive).
- **Implementation**:
```bash
#!/bin/bash
grep -i '^[[:alpha:]]' /etc/ssh/sshd_config

### 19-AZ

- **Purpose**: This script replaces all occurrences of the letters 'A' and 'c' with 'Z' in a given input.
- **Implementation**:
```bash
#!/bin/bash
tr "Ac" "Ze"

### 20-hiago

- **Purpose**: This script removes all occurrences of the letters 'c' and 'C' from a given input.
- **Implementation**:
```bash
#!/bin/bash
tr -d "cC"


### 21-reverse

- **Purpose**: This script reverses the order of characters in each line of the input.
- **Implementation**:
```bash
#!/bin/bash
rev


### 22-users_and_homes

- **Purpose**: This script extracts the usernames and home directories of users from the `/etc/passwd` file and sorts them.
- **Implementation**:
```bash
#!/bin/bash
cut -d ':' -f 1,6 /etc/passwd | sort


### 100-empty_casks

- **Purpose**: This script finds and lists empty files and directories in the current directory.
- **Implementation**:
```bash
#!/bin/bash
find . -type f,d -empty -printf "%f\n"


### 101-gifs

- **Purpose**: This script finds and lists empty GIF files in the current directory.
- **Implementation**:
```bash
#!/bin/bash
find . -type f -empty -iname "*.gif" -printf "%f\n" | tr -d '.gif' | LC_ALL=C sort -fV | printf '%s\n'

### 102-acrostic

- **Purpose**: This script generates an acrostic by taking the first character from each line of input and concatenating them.
- **Implementation**:
```bash
#!/bin/bash
cut -c 1 | paste -s -d ''


### 103-the_biggest_fan

- **Purpose**: This script analyzes a file containing fan names and counts the top 10 most popular fans based on their frequency.
- **Implementation**:
```bash
#!/bin/bash
tail -n +2 | cut -f -1 | sort -k 1 | uniq -c | sort -rnk 1 | head -n 11 | rev | cut -d ' ' -f -1 | rev



## Author

- DC Emerem (https://github.com/dellanox)

## License

This project is licensed under the [--- License](https://opensource.org/licenses/---)- see the [LICENSE](LICENSE) file for details.



