# conection to server using ssh:
#    our SSH client configuration must be configured to use the private key ~/.ssh/holberton
#    Your SSH client configuration must be configured to refuse to authenticate using a password

exec { 'change_ssh_config':
command  => 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school" > /etc/ssh/ssh_config',
provider => 'shell'
    }
