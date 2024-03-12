import os

# List user accounts
users = os.popen('cut -d: -f1 /etc/passwd').read().split()
print("User accounts on the system:")
print(users)
