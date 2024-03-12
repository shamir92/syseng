import os

# Calculate system uptime
uptime = os.popen('uptime -p').read().strip()
print(f"System Uptime: {uptime}")
