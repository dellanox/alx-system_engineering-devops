# ALX System Engineering & DevOps - Shell Permissions

This repository contains a collection of shell scripts that demonstrate various concepts related to file and directory permissions in Unix-based systems. Each script serves a specific purpose and showcases different permissions-related operations.

## Scripts

### 0-iam_betty

- **Purpose**: This script switches the user to `betty`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
su betty
```
</pre>


### 1-who_am_i

- **Purpose**: This script displays the current user.
- **Implementation**:

<pre>
```bash
#!/bin/bash
whoami
```
</pre>

 
### 2-groups

- **Purpose**: This script lists the groups the current user belongs to.
- **Implementation**:

<pre>
```bash
#!/bin/bash
groups
```
</pre>


### 3-new_owner

- **Purpose**: This script changes the owner of the file `hello` to `betty`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chown betty hello
```
</pre>


### 4-empty

- **Purpose**: This script creates an empty file named `hello`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
touch hello
```
</pre>


### 5-execute

- **Purpose**: This script grants execute permission to the user on the file `hello`.
- **Implementation**:


<pre>
```bash
#!/bin/bash
chmod u+x hello
```
</pre>


### 6-multiple_permissions

- **Purpose**: This script grants execute permission to the user and group, and read permission to others on the file `hello`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chmod ug+x,o+r hello
```
</pre>


### 7-everybody

- **Purpose**: This script grants execute permission to all users on the file `hello`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chmod ugo+x hello
```
</pre>


### 8-James_Bond

- **Purpose**: This script sets the permissions of the file `hello` to 007, allowing only the owner to have all permissions.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chmod 007 hello
```
</pre>


### 9-John_Doe

- **Purpose**: This script sets specific permissions on the file `hello` using the numeric mode.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chmod 753 hello
```
</pre>


### 10-mirror_permissions

- **Purpose**: This script sets the permissions of the file `hello` to match the permissions of the file `olleh`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chmod --reference=olleh hello
```
</pre>


### 11-directories_permissions

- **Purpose**: This script sets read and execute permissions for all users on all directories within the current directory.
- **Implementation**:

<pre>
```bash
#!/bin/bash
find . -type d -exec chmod ugo+rx {} +
```
</pre>


### 12-directory_permissions

- **Purpose**: This script creates a directory named `my_dir` with specific permissions.
- **Implementation**:

<pre>
```bash
#!/bin/bash
mkdir -m 751 my_dir
```
</pre>


### 13-change_group

- **Purpose**: This script changes the group of the file `hello` to `school`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chgrp school hello
```
</pre>


### 100-change_owner_and_group

- **Purpose**: This script changes the owner and group of all files and directories in the current directory recursively to `vincent:staff`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chown -R vincent:staff .
```
</pre>


### 101-symbolic_link_permissions

- **Purpose**: This script changes the owner and group of the symbolic link `_hello` to `vincent:staff`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chown -h vincent:staff _hello
```
</pre>


### 102-if_only

- **Purpose**: This script changes the owner of the file `hello` from `guillaume` to `betty`.
- **Implementation**:

<pre>
```bash
#!/bin/bash
chown --from=guillaume betty hello
```
</pre> 


### 103-Star_Wars

- **Purpose**: This script initiates a telnet connection to the server `towel.blinkenlights.nl` to watch a Star Wars ASCII animation.
- **Implementation**:

<pre>
``` bash
#!/bin/bash
telnet towel.blinkenlights.nl
```
</pre>


