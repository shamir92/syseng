#bin/bash
while read line; do
    echo "Line: $line"
done < /etc/passwd
