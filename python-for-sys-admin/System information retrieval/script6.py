import psutil

# Get battery status
battery = psutil.sensors_battery()
print(f"Charge: {battery.percent}%")
print(f"Plugged in: {'Yes' if battery.power_plugged else 'No'}")
