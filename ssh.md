- generate ssh keys with ssh-keygen -t rsa -b 4096 -C "eddiejnolan@gmail.com"
- Edit /etc/ssh/sshd_config
- change "PermitRootLogin yes" to "PermitRootLogin no"
- change "PasswordAuthentication yes" to "PasswordAuthentication no"
- change "ChallengeResponseAuthentication yes" to "ChallengeResponseAuthentication no"