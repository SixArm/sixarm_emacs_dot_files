;; Initialize the current location
(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Add load paths
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; Startup
(load-library "enable-all-commands-in-one-fell-swoop")
(load-library "inhibit-splash-screen")
(load-library "inhibit-startup-message")
(load-library "auto-save-off")

;; Display
(load-library "global-font-lock-mode-without-syntax-color-highlight")
(load-library "global-hl-line-mode-off")
(load-library "linum-format-uses-right-justify-six-digit-bar-pad")
(load-library "menu-bar-off")
(load-library "set-default-font")
(load-library "show-line-number-and-column-number")

;; Colors
;;(load-library "cursor-color-white")
;;(load-library "green-on-black-colors")

;; Editing
(load-library "indent-tabs-mode-off")
(load-library "meta-space-does-hippie-expand")
(load-library "search-uses-regexp")
(load-library "select-window-with-alt-arrow")

;; Files
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
