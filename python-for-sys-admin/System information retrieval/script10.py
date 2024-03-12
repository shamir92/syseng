import psutil

# List all processes
for proc in psutil.process_iter(['pid', 'name']):
    print(proc.info)
