import platform
import socket
import re
import uuid
import json

# Fetch basic info
info = {}
info['platform'] = platform.system()
info['platform-release'] = platform.release()
info['platform-version'] = platform.version()
info['architecture'] = platform.machine()
info['hostname'] = socket.gethostname()
info['ip-address'] = socket.gethostbyname(socket.gethostname())
info['mac-address'] = ':'.join(re.findall('..', '%012x' % uuid.getnode()))

# Convert to JSON format
json_info = json.dumps(info, indent=4)
print(json_info)
