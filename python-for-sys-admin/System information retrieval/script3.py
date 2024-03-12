import psutil

# Get the memory details
memory = psutil.virtual_memory()
print(f"Total: {memory.total / (1024 ** 3):.2f} GB")
print(f"Available: {memory.available / (1024 ** 3):.2f} GB")
print(f"Used: {memory.used / (1024 ** 3):.2f} GB")
print(f"Percentage: {memory.percent}%")
