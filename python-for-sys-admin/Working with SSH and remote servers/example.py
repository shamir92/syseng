import paramiko
import threading

def execute_command_on_multiple_servers(hosts, username, password, command):
    def execute_command(host):
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        client.connect(host, username=username, password=password)
        stdin, stdout, stderr = client.exec_command(command)
        print(f"Output from {host}: {stdout.read().decode()}")
        client.close()

    threads = []
    for host in hosts:
        thread = threading.Thread(target=execute_command, args=(host,))
        threads.append(thread)
        thread.start()

    for thread in threads:
        thread.join()

# Usage:
execute_command_on_multiple_servers(["server1", "server2"], "myuser", "mypassword", "uptime")
