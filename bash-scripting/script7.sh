#bin/bash 
# This is a simple script that asks for your age and tells you if you are an adult or a minor.
read -p "Enter your age: " age
if [ "$age" -ge 18 ]; then
    echo "You are an adult."
else
    echo "You are a minor."
fi
