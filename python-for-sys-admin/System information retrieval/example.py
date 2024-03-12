What Python library would you use to get the CPU frequency?
import psutil
print(psutil.cpu_freq().current)


How can you check the total memory on the system?
import psutil
print(psutil.virtual_memory().total)
print(psutil.virtual_memory().available)

Can you determine the MAC address of your system using Python?
import uuid
print(':'.join(re.findall('..', '%012x' % uuid.getnode())))


How would you find out the number of processes currently running on the system?import psutil
print(len(psutil.pids()))
