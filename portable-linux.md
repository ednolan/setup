Say you have an external GPT disk with a linux installation on one of the partitions. You want to make this disk into a bootable EFI disk. Here is how you can do it:

Useful links: `https://askubuntu.com/questions/740253/how-to-install-grub-in-an-external-hard-drive` `https://www.dionysopoulos.me/portable-ubuntu-on-usb-hdd/`

1. Use gparted to create a 200MB FAT32 partition on the disk. Set the `esp` flag on the partition.

2. Mount the linux partition on `/mnt`

3. Mount virtual filesystems: `for i in /dev /dev/pts /proc /sys /run; do sudo mount -B $i /mnt$i; done`

4. Chroot to `/mnt/`

5. Mount the EFI partition in `/boot/efi`

6. Install GRUB on the disk: `grub-install -d /usr/lib/grub/x86_64-efi --efi-directory=/boot/efi/ --removable /dev/sdX`

7. Run `update-grub`

8. Edit `/etc/fstab` so that the EFI partition has the correct UUID (get this from GRUB)
