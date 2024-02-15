# Interview Question and Answer on Shell Scripting

#### Q:1 - List some of the commonly used shell commands?
#### Answer: The commonly used commands are:
- ls  (to list the files)
- cp (copy the files and folders to another location
- mv (move the file and folders to another location and this is also used for rename the file and folder name)
- mkdir (this is used to create the directory[folder])
- touch (this is used to create file)
- vi (this is used to open the file and edit the file)
- grep (this is used to filter purpose)
- top (for cpu utilization or debugging)
- etc..
#### Q:2 - Write a simple shell script to list all process?
#### Answer: 
```
ps -ef (is used for list all the processes)

For only process id

ps -ef | awk -F" " '{print $2}'
``` 

#### Q:3 - Write a script to print only errors from a remote log?
#### Answer: We can achive this by doing curl, |, and grep commands
```
curl google.com | grep HREF
```

#### Q:4 - Write a shell script to print numbers divided by 3 & 5 and not 15?
#### Answer: 
```
#!/bin/bash
# divisible by 3, divisible by 5, but not 3*5=15

for ( i=1; i<=100; i++); do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [`expr $i % 15` != 0 ];
then
	echo $i
fi
done
``` 

#### Q:5 - Write a script to print number of "S" in mississippi?
#### Answer:
```
#!/bin/bash

x=mississipi

grep -o "s" <<<"$x" | wc -l
```

#### Q:6 - How will you debug the shell script?
#### Answer:
```
set -x
``` 

#### Q:7 - What is crontab in Linux? Can you provide an exapmple of usage ?
#### Answer:
- Crontab is act like alarm or action that do a certain job at a given time and it run automarically when the time is come.

Exapmle: Like you try to take the logs of something, so for that you need to log in to the system and take logs. Crontab automate this process and take logs without manual intervention

#### Q:8 - How to open a read-only file?
#### Answer:
```
vim -r filename
```

#### Q:9 - What is the difference between soft and hard link?
#### Answer:
1. Soft Link (Symbolic Link):

- A soft link, also known as a symbolic link, is essentially a pointer to another file or directory.
- It's created using the ln -s command.
- Soft links can reference files or directories across different file systems.
- If the original file or directory is deleted or moved, the soft link will become broken or "dangling," pointing to a non-existent location.
- Soft links can refer to directories as well as files.
- They can be created with relative paths.

2. Hard Link:

- A hard link is a direct reference to the inode (the data structure on disk that stores the file's metadata and content) of a file.
- It's created using the ln command without the -s option.
- Hard links can only be created for files, not directories, and they cannot reference directories.
- Deleting the original file does not affect hard links; they remain valid as long as there's at least one hard link pointing to the inode.
- Hard links cannot reference files on different file systems. They must be on the same file system.
- Removing one hard link does not affect the file content, as it's just a reference to the same data on disk.


#### Q:10 - What is the difference between break and continue statements?
#### Answer:
- BREAK -> breaking the execution
- CONTINUE -> continuing the execution (SKIP): skip this and continue to the next

#### Q:11 - What are the disadvantages of Shell scripting?
#### Answer: Shell scripting has the following disadvantages are:
- Errors are frequent and costly, and a single error can alter the command.
- The execution speed is low.
- Bugs or inadequacies in the language's syntax or implementation.
- Large, complex tasks aren't well suited to it.
- Contrary to other scripting languages, etc. It provides a minimal data structure.
- Everytime a shell command is executed, a new process is launched.


#### Q:12 - What are the different types of loops and when to use?
#### Answer:
- FOR loop
- While loop


#### Q:13 - Is bash dynamic or statically typed and why?
#### Answer:
- It is dynamically typed language


#### Q:14 - Explain about a network troubleshooting utility?
#### Answer: 
- tracreroute url_name
- tracepath

#### Q:15 - How will you sort list of names in a file?
#### Answer: 
	sort file_name

#### Q:16 - How will you manage logs of a system that generates huge log files everyday?
#### Answer:
```
logrotate (gzip, zip)
```

