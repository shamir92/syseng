import subprocess
processes = subprocess.run(['ps', 'aux'], stdout=subprocess.PIPE).stdout.decode('utf-8')
print(processes)