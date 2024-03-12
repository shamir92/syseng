# 21. Display System Information
import platform
system_info = platform.uname()
print(f"System: {system_info.system}")
print(f"Node Name: {system_info.node}")
print(f"Release: {system_info.release}")
print(f"Version: {system_info.version}")
print(f"Machine: {system_info.machine}")
print(f"Processor: {system_info.processor}")

# 22. List Installed Packages
os.system('apt list --installed')

# 23. Check Internet Connectivity
os.system('ping -c 5 google.com')

# 24. Find Large Files in a Directory
os.system('find /path/to/directory -type f -size +100M')

# 25. Display Open Ports
os.system('lsof -i')

# 26. Compress Files Using Gzip
os.system('gzip /path/to/file')

# 27. Unmount a Filesystem
os.system('umount /path/to/mountpoint')

# 28. Display Hardware Information (CPU/Memory)
os.system('lshw -short')

# 29. Change Ownership of a File
os.system('chown user:group /path/to/file')

# 30. Display Current Logged In Users
os.system('who')
