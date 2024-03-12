# 1. Reading a file
with open('example.txt', 'r') as file:
    data = file.read()

# 2. Writing to a file
with open('example.txt', 'w') as file:
    file.write('Hello, World!')

# 3. Appending to a file
with open('example.txt', 'a') as file:
    file.write('\nHello again!')

# 4. Listing all files in a directory
import os
files = os.listdir('/path/to/directory')

# 5. Creating a new directory
os.makedirs('/path/to/new_directory', exist_ok=True)

# 6. Renaming a file or directory
os.rename('/path/to/old_name', '/path/to/new_name')

# 7. Removing a file
os.remove('/path/to/file')

# 8. Removing an empty directory
os.rmdir('/path/to/directory')

# 9. Walking a directory tree
for root, dirs, files in os.walk('/path/to/directory'):
    print(f'Root: {root}, Directories: {dirs}, Files: {files}')

# 10. Copying a file
from shutil import copyfile
copyfile('/path/to/source', '/path/to/destination')
