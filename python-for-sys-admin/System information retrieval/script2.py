import psutil

# Get the number of logical CPUs in the system
print("Logical CPUs:", psutil.cpu_count())

# Get the number of physical cores
print("Physical cores:", psutil.cpu_count(logical=False))

# Get CPU frequencies
cpu_freq = psutil.cpu_freq()
print(f"Current Frequency: {cpu_freq.current:.2f}Mhz")
