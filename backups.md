**Connect to the network**

nmtui

**Install git**

`sudo yum install -y epel-release`
`sudo yum install -y git`

**Set up zfs**

Installing the software: https://linuxhint.com/install-zfs-centos7/

https://github.com/zfsonlinux/zfs/wiki/RHEL-and-CentOS

Creating the pool: https://wiki.archlinux.org/index.php/ZFS#Advanced_Format_disks

```~ $ sudo zpool history ed_pool
[sudo] password for eddie:
History for 'ed_pool':
2018-09-03.20:21:46 zpool create -f -o ashift=12 -m /mnt/storage ed_pool mirror ata-ST5000LM000-2AN170_WCJ0RDZR ata-ST5000LM000-2AN170_WCJ0G9SS
2018-09-03.20:22:48 zfs create ed_pool/eddie
2018-09-03.20:24:12 zpool set cachefile=/etc/zfs/zpool.cache ed_pool
2018-09-03.20:25:56 zfs set relatime=on ed_pool```

Install systemd zpool scrub: https://github.com/lnicola/systemd-zpool-scrub

**Set up nfs on backupbox**

Create an `nfsuser` user

Create directories:

```mkdir /mnt/storage/eddie/ed-mbp-backup
mkdir /mnt/storage/eddie/ed-macmini-backup```

Set directory perms:

```sudo chown nfsuser:nfsuser /mnt/storage/eddie/ed-mbp-backup
sudo chmod 744 /mnt/storage/eddie/ed-mbp-backup
sudo chown nfsuser:nfsuser /mnt/storage/eddie/ed-macmini-backup
sudo chmod 744 /mnt/storage/eddie/ed-macmini-backup```

Install nfs:

`yum -y install nfs-utils`

Set up firewall: https://www.howtoforge.com/tutorial/setting-up-an-nfs-server-and-client-on-centos-7/

```yum -y install firewalld
systemctl start firewalld.service
systemctl enable firewalld.service
firewall-cmd --permanent --zone=public --add-service=ssh
firewall-cmd --permanent --zone=public --add-service=nfs
firewall-cmd --reload```

Maybe also need `--add-service=rpcbind` and `--add-service=mountd`? https://unix.stackexchange.com/questions/243756/nfs-servers-and-firewalld

Do some kind of weird port forwarding stuff also? I don't remember. 2222 -> 222

Set up /etc/exports:

```/mnt/storage/eddie/ed-mbp-backup 192.168.1.20(async,rw,no_subtree_check,insecure,all_squash,anonuid=1001,anongid=1001)
/mnt/storage/eddie/ed-macmini-backup 192.168.1.80(async,rw,no_subtree_check,insecure,all_squash,anonuid=1001,anongid=1001)```

I don't totally remember why these options are set. Here are links

https://serverfault.com/questions/240897/how-to-properly-set-permissions-for-nfs-folder-permission-denied-on-mounting-en
https://smekkley.wordpress.com/2014/01/18/time-machine-via-nfs-on-mavericks/

The anonuid and anongid are those of nfsuser

Set up nfs:

```systemctl start nfs
systemctl enable nfs```

**Set up nfs on mac**

Change `/etc/nfs.conf` to have this line:

`nfs.client.mount.options = intr,locallocks,nfc`

See https://wiki.archlinux.org/index.php/NFS/Troubleshooting#Unreliable_connection_from_OS_X_clients

Create an automator script that runs "connect to server" with the proper url i.e. `nfs://192.168.1.100/mnt/storage/eddie/ed-mbp-backup` and run it whenever you want to connect

Create the sparse bundle and point time machine to it: https://lb9mg.no/2016/03/23/using-os-x-time-machine-with-nfs/
