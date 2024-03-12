import subprocess

# Function to add a new user
def add_user(username):
    subprocess.run(['sudo', 'adduser', username], check=True)

# Function to delete a user
def del_user(username):
    subprocess.run(['sudo', 'deluser', username], check=True)

# Function to add a user to a group
def add_user_to_group(username, group):
    subprocess.run(['sudo', 'adduser', username, group], check=True)

# Function to remove a user from a group
def del_user_from_group(username, group):
    subprocess.run(['sudo', 'deluser', username, group], check=True)

# Function to create a new group
def add_group(groupname):
    subprocess.run(['sudo', 'addgroup', groupname], check=True)

# Function to delete a group
def del_group(groupname):
    subprocess.run(['sudo', 'delgroup', groupname], check=True)

# Example usage
add_user('razan')
add_group('razan')
add_user_to_group('razan', 'razan')
del_user_from_group('razan', 'razan')
del_user('razan')
del_group('razan')
