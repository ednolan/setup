WIP

# Bootstrapping

Enable ssh

`sudo apt -y install openssh-server`

`mkdir sync` and populate it from other machine's folder with `bash-scripts/synchronize-dir`

Install software

`sudo ~/sync/setup/scripts/install-software`

Log out & log in in cinnamon

## Cinnamon Preferences:

Applets:

Add applets: Workplace Switcher

*Cinnamon Panel Settings*

Applet arrangement:

Menu, Show Desktop, Panel Launchers, Workspace Switcher, Network Manager, Sound, Blueberry, Calendar

Panel applet settings:

cinnamon-menu activation shortcut to ctrl-space only

Panel Launchers: Files, Google Chrome, Alacritty

Workspace Switcher: Type of Display -> Simple Buttons

Calendar: Use a Custom Date Format -> On, Date Format -> `%I:%M:%S %p`

Backgrounds -> set to ~/sync/wallpapers/adwaita-lock.jpg

Copy fonts in; reload font cache with `fc-cache -f -v`

Fonts -> Default Font -> Helvetica Neue Regular 10

Fonts -> Document Font -> Helvetica Neue Regular 11

Fonts -> Monospace Font -> Menlo Regular 11

Fonts -> Window Title Font -> Helvetica Neue Book 10

Keyboard -> Shortcuts -> Windows -> Tiling and Snapping, assign "Push tile up/down/left/right" to Alt+Super+Up/Down/Left/Right

Keyboard -> Shortcuts -> Workspace -> Direct Navigation, assign Alt + 1/2/3/4 to Switch to workspace 1/2/3/4

Screensaver -> Settings -> Delay before Starting to Never

Themes -> Desktop -> Modern Mint Light

Themes -> Window Border -> Adwaita-X-light

Themes -> Icons -> Adwaita

# General Notes

Install tmux plugin manager by running:

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Disable all shortcuts other than shift-ctrl-c and shift-ctrl-v for copy/paste in gnome-terminal (Preferences -> Shortcuts)

In gnome-terminal, unset "Enable the menu accelerator key" to disable the F10 shortcut

Edit keyboard map as described: https://askubuntu.com/a/766216 to swap cmd and ctrl
