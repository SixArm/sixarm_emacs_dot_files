# SixArm » Emacs » Dot files for configuration

This repo has our typical emacs.d files. 

Startup:

* enable-all-commands: turn on powerful commands for experienced users.
* enable-all-commands-in-one-fell-swoop: fast setup for experienced users.
* inhibit-startup-message: skip the intro "For information about GNU Emacs". 
* package-setup-with-elpa-and-marmalade: use good package manager archives.

Display:

* global-font-lock-mode-without-syntax-color-highlight: we prefer plain text.
* global-hl-line-mode-off: we prefer plain lines.
* linum-format-uses-right-justify-six-digit-bar-pad: for readable line numbers.
* menu-bar-off: hide the graphical menu bar at the top of the screen.
* set-default-font: we like using Inconsolata 14. 
* show-line-number-and-column-number: add this info to the mode line. 

Colors:

* n.b. if you want these colors, edit init.el file to enable these
* cursor-color-white: we prefer a bright white cursor.
* green-on-black-colors: we like the look of a classic display.

Editing:

* indent-tabs-mode-off: indent lines with spaces, not tabs.
* meta-space-does-hippie-expand: quick way to autocomplete words.
* search-uses-regexp: kbd search with C-s and C-r uses regular expressions.
* select-window-with-alt-arrow: faster navigation

Files:

* auto-save-off: turn off auto save of file buffers.
* backup-inhibited: disable automatic backups of file buffers.  
* before-save-hook-to-delete-trailing-whitespace: clean up typical chaff.

Tools:

* ido-everywhere: turn on the ido manager.
* prelude-guru-off: because we want to be able to use arrow keys.

Modes:

* closure-mode-on: require closure programming major mode.
