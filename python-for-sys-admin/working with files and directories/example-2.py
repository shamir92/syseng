# Easy: Print the current working directory
import os
print(os.getcwd())

# Easy: List all files and directories in the current directory
print(os.listdir('.'))

# Easy: Create a new directory
os.mkdir('new_directory')

# Intermediate: Rename a directory
os.rename('new_directory', 'renamed_directory')

# Intermediate: Remove a directory
os.rmdir('renamed_directory')

# Intermediate: Write to a file
with open('example.txt', 'w') as file:
    file.write('Hello, World!')

# Hard: Read a file line by line and print each line
with open('example.txt', 'r') as file:
    for line in file:
        print(line.strip())

# Hard: Copy a file
import shutil
shutil.copy('example.txt', 'copy_of_example.txt')

# Hard: Move a file to a new directory
shutil.move('copy_of_example.txt', '/home/rani/Documents/copy_of_example.txt')

# Very Hard: Recursively list all files in a directory tree
for root, dirs, files in os.walk('.'):
    for name in files:
        print(os.path.join(root, name))
