;; Require common lisp - a rare necessary use of require
(require 'cl)

;; Track how long emacs takes to load - see bottom of this file for more
(defvar *emacs-load-start* (current-time))

;; Initialize the current location
(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Add load paths
(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/.emacs.d/elisp/startup")
(add-to-list 'load-path "~/.emacs.d/elisp/colors")
(add-to-list 'load-path "~/.emacs.d/elisp/personal")

;; Startup
(load-library "enable-all-commands-in-one-fell-swoop")
(load-library "inhibit-splash-screen")
(load-library "inhibit-startup-message")
(load-library "initial-scratch-message-off")

;; Display
(load-library "highlight-selection")
(load-library "linum-format-uses-right-justify-six-digit-bar-pad")
(load-library "menu-bar-off")
(load-library "scroll-bar-off")
(load-library "tool-bar-off")
(load-library "tooltip-off")
(load-library "set-default-font")
(load-library "show-line-number-and-column-number")
(load-library "show-paren")
(load-library "yes-or-no-prompts-show-y-or-n")

;; Colors
(load-library "global-font-lock-mode-without-syntax-color-highlight")
(load-library "global-hl-line-mode-off")
;;(load-library "cursor-color-white")
;;(load-library "green-on-black-colors")

;; Editing
(load-library "indent-tabs-mode-off")
(load-library "meta-space-does-hippie-expand")
(load-library "search-uses-regexp")
(load-library "select-window-with-alt-arrow")
(load-library "soft-tabs")

;; Compeletion
(load-library "icomplete-mode-on")
(load-library "file-name-shadow-adjuster")

;; Files
(load-library "auto-save-off")
(load-library "backup-inhibited")
(load-library "before-save-hook-to-delete-trailing-whitespace")

;; Tools
(load-library "ido-everywhere")
(load-library "prelude-guru-off")

;; Load all our favorite packages and package archives
(load-library "package-list")

;; Bindings
(load-file (concat dotfiles-dir "bindings/helm.el"))

;; Modes
(load-file (concat dotfiles-dir "modes/closure-mode-on.el"))
