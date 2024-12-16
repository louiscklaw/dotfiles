ssh-keygen

type $env:USERPROFILE\.ssh\id_rsa.pub | ssh logic@192.168.10.21 "cat >> .ssh/authorized_keys"
