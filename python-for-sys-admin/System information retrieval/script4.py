import psutil

# Get the disk partitions
partitions = psutil.disk_partitions()
for partition in partitions:
    print(f"Device: {partition.device}")
    print(f"\tMountpoint: {partition.mountpoint}")
    print(f"\tFile system type: {partition.fstype}")
    
    try:
        partition_usage = psutil.disk_usage(partition.mountpoint)
    except PermissionError:
        # this can be caught due to the disk that
        # isn't ready
        continue
    print(f"\tTotal Size: {partition_usage.total / (1024 ** 3):.2f} GB")
