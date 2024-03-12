import os
files = os.listdir('/home/rani')

print(files)
print('\n')

for item in files: 
    if os.path.isfile(item):
        print(item)
    else:
        print('Directory: ' + item)
