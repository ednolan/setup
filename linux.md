WIP

# Bootstrapping

Enable ssh

`sudo apt -y install openssh-server`

`mkdir sync` and populate it from other machine's folder with `bash-scripts/synchronize-dir`

Run `install-software` script

Run `setup-user` script

Add ssh keys to git hosting services

Log out & log in in cinnamon

Download these themes and unzip to .themes dir:

`mkdir -p .themes`

`https://www.cinnamon-look.org/p/1012732/`

`https://www.opendesktop.org/p/1013736`

`unzip ~/Downloads/150905-adwaita-x-dark-light-1.3.zip -d ~/.themes`

`unzip '~/Downloads/174945-Modern Mint.zip' -d ~/.themes`

## Cinnamon Preferences:

Applets:

Add applets: Workplace Switcher

*Cinnamon Panel Settings*

Applet arrangement:

Menu, Show Desktop, Panel Launchers, Workspace Switcher, Network Manager, Sound, Blueberry, Calendar

Panel applet settings:

cinnamon-menu activation shortcut to ctrl-space only

Panel Launchers: Files, Google Chrome, Gnome Terminal

Workspace Switcher: Type of Display -> Simple Buttons

Calendar: Use a Custom Date Format -> On, Date Format -> `%I:%M:%S %p`

Backgrounds -> set to ~/sync/wallpapers/adwaita-lock.jpg

Copy fonts in; reload font cache with `fc-cache -f -v`

Fonts -> Default Font -> Helvetica Neue Regular 10

Fonts -> Document Font -> Helvetica Neue Regular 11

Fonts -> Monospace Font -> Menlo Regular 11

Fonts -> Window Title Font -> Helvetica Neue Book 10

Keyboard -> Shortcuts -> Windows -> Tiling and Snapping, assign "Push tile up/down/left/right" to Ctrl+Alt+Up/Down/Left/Right

Keyboard -> Shortcuts -> Workspace -> Direct Navigation

Assign Alt + 1/2/3/4 to Switch to workspace 1/2/3/4

Assign Ctrl + Shift + !/@/#/$ to Switch to workspace 1/2/3/4

Screensaver -> Settings -> Delay before Starting to Never

Themes -> Desktop -> Modern Mint Light

Themes -> Window Border -> Adwaita-X-light

Themes -> Icons -> Adwaita

Effects -> Window Effects -> Off

# General Notes

Install tmux plugin manager by running:

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Disable all shortcuts other than shift-ctrl-c and shift-ctrl-v for copy/paste in gnome-terminal (Preferences -> Shortcuts)

In gnome-terminal, unset "Enable the menu accelerator key" to disable the F10 shortcut

Edit keyboard map as described: https://askubuntu.com/a/766216 to swap cmd and ctrl

Alternatively use Keyboard -> Layouts -> Options -> Alt/Win key behavior to rearrange the modifier keys (option for a Windows keyboard is "Ctrl is mapped to Alt; Alt is mapped to Win"

# Hibernation

Find UUID of swap partition and append it to the `GRUB_CMDLINE_LINUX_DEFAULT` param in `/etc/default/grub` as `resume=UUID=your-uuid-here` and then run `sudo update-grub`

Add hibernate option to power menu with this guide: http://ubuntuhandbook.org/index.php/2018/05/add-hibernate-option-ubuntu-18-04/

# fortune | cowsay

Install the following /etc/profile.d/motd.sh:

```#!/bin/bash
/usr/bin/fortune | /usr/bin/cowsay```
