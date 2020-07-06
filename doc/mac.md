# Mac Setup Documentation

## Software

**Paid software:**

BetterTouchTool, Display Menu, Fantastical 2, OmniGraffle, VMWare Fusion

**Free/gratis software:**

Discovery DNS-SD Browser, Disk Inventory X, Emacs, FileZilla, Flux, GIMP, MPlayerX, piZZa, Transmission, Tunnelblick

## Application settings

**Finder**

Preferences:

General: Show these items on the desktop: Untick all

General: New Finder windows show: Home directory

General: Untick "Open folders in tabs instead of new windows"

Sidebar: Show these items in the sidebar: AirDrop, Applications, Desktop, Documents, Downloads, home directory, computer, Hard disks, External disks, CDs, DVDs, and iOS Devices

Advanced: Show all filename extensions

**iTerm2**

General: Magic: Advanced GPU Settings: Untick "Maximize throughput"

Appearance: Light Theme

Profiles: Colors: Terminal Basic (download theme from https://github.com/mbadolato/iterm2-Color-Schemes)

Profiles: Text:

> Font: SF Mono Light (size 13 laptop, size 16 desktop)

Profiles: Terminal: Scrollback Lines: 50000; untick "Unlimited Scrollback"

Profiles: Terminal: Report Terminal Type: xterm-256color, Silence Bell

Profiles: Terminal: Notifications: untick Notification Center Alerts

Profiles: Keys: Left option key acts as Esc+, Right option key acts as Esc+

Profiles: Keys: Key mappings:

> Control Shift C -> Do Not Remap Modifiers

> Control Shift V -> Paste

> Control ` -> Send Hex Codes: 0x00

Make sure that there are no Option <arrow key> mappings.

Keys: Remap Modifiers: Swap command and control

**BetterTouchTool**

Standard Settings -> BTT Remote -> Untick "Enable BTT Remote Support"

Map this "Normal Mouse" shortcut:

Middle Mouse Button -> Mission Control

Map these keyboard shortcuts:

Option Command Up -> Maximize Window

Option Command Left -> Maximize Window Left

Option Command Right -> Maximize Window Right

Control Command S -> Start Screen Saver

## System Preferences

**General**

Default web browser: Firefox

**Dock**

Tick "Automatically hide and show the Dock"

Untick "Show recent applications in Dock"

**Mission Control**

Untick "Automatically rearrange Spaces based on most recent use"

Bind Mission Control to F12

Unbind "Application Windows", "Show Desktop"

**Security and Privacy**

General: Require password immediately after sleep or screen saver begins

Privacy:

Enable accessibility controls for the following:

BetterTouchTool, iTerm

**Keyboard**

Keyboard:

Key Repeat: Fast

Shortcuts:

> Mission Control: Untick "Move left a space", "Move right a space"

> Mission Control: Alt-1,2,3,4,5,6,7,8 to Switch to Desktop 1,2,3,4,5,6,7,8 (these desktops must exist to create these shortcuts)

App Shortcuts:

> Firefox: Quit Firefox -> Option Command Q

> Safari: Quit -> Option Command Q

> Chrome: Quit Google Chrome -> Option Command Q

> Chrome: Reload This Page -> F5

> Chrome: Open Location... -> F6

Text:

Untick "Use smart quotes and dashes"

**Users and Groups**

Login Items:

> BetterTouchTool, Flux

**Date & Time**

Clock:

Display the time with seconds

Untick "Show the day of the week"

## Other Settings

**TextEdit Preferences**

New Document:

Format: Plain Text

Options: Untick "Smart quotes", "Smart dashes"

Open and Save:

Tick "Display HTML files as HTML code instead of formatted text"

Untick "Add .txt extension to plain text files"

**Screenshot Preferences**

> Command Shift 5 -> Options -> Untick Show Floating Thumbnail

> Command Shift 5 -> Options -> Save screenshots to Documents/Screenshots directory

**Screen Saver**

Start after: Never

Download/install XScreensaver

Screen Saver preferences:

Screen Saver: Surfaces

Frame Rate: Medium

Duration: four ticks away from Long

Surface: Pluecker's Conoid

Display Mode: Random

Untick "Wander", "Spin", "Show Frame Rate"

**Home and End Keys**

Use this SO answer to fix the home/end keys: https://apple.stackexchange.com/a/18028
