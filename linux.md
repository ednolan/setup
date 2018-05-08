WIP

# Bootstrapping

Enable ssh

`sudo apt -y install openssh-server`

`mkdir sync` and populate it from other machine's folder with `bash-scripts/synchronize-dir`

Install software

`sudo ~/sync/setup/scripts/install-software`

Log out & log in in cinnamon

Applying cinnamon settings:

Themes -> Desktop -> Modern Mint Light

Themes -> Window Border -> Adwaita-X-light

# General Notes

Install tmux plugin manager by running:

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

Disable all shortcuts other than shift-ctrl-c and shift-ctrl-v for copy/paste in gnome-terminal (Preferences -> Shortcuts)

In gnome-terminal, unset "Enable the menu accelerator key" to disable the F10 shortcut

Configure cinnamon-menu activation shortcut to ctrl-space only

Edit keyboard map as described: https://askubuntu.com/a/766216 to swap cmd and ctrl

In Cinnamon Keyboard Settings -> Shortcuts -> Windows -> Tiling and Snapping, assign "Push tile up/down/left/right" to Alt+Super+Up/Down/Left/Right
