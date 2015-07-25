;; Require common lisp - a rare necessary use of require
(require 'cl)

;; Track how long emacs takes to load - see bottom of this file for more
(defvar *emacs-load-start* (current-time))

;; Initialize the current location
(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Add `elisp` subdirectories to the load path
(let ((default-directory (concat dotfiles-dir "elisp/")))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

;; Startup
(load-library "enable-all-commands-in-one-fell-swoop")
(load-library "inhibit-splash-screen")
(load-library "inhibit-startup-message")
(load-library "initial-major-mode")
(load-library "initial-scratch-message-off")

;; Display
(load-library "highlight-selection")
(load-library "indicate-empty-lines")
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
(load-library "delete-selection-mode-on")
(load-library "indent-tabs-mode-off")
(load-library "sentence-end-single-space")
(load-library "transient-mark-mode-on")

;; Keys
(load-library "comment-region")
(load-library "meta-space-does-hippie-expand")
(load-library "search-uses-regexp")
(load-library "select-window-with-alt-arrow")
(load-library "soft-tabs")
(load-library "text-scale")

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

;; Modes
;(load-file (concat dotfiles-dir "modes/closure-mode/0.el"))
;(load-file (concat dotfiles-dir "modes/closure-mode/auto-mode-alist.el"))
;(load-file (concat dotfiles-dir "modes/closure-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/coffee-mode/0.el"))
(load-file (concat dotfiles-dir "modes/coffee-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/coffee-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/coffee-mode/indent.el"))
(load-file (concat dotfiles-dir "modes/conf-mode/0.el"))
(load-file (concat dotfiles-dir "modes/conf-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/cua-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/helm-mode/0.el"))
(load-file (concat dotfiles-dir "modes/cpsa-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/cpsa-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/cpsa-mode/derive.el"))
(load-file (concat dotfiles-dir "modes/js2-mode/0.el"))
(load-file (concat dotfiles-dir "modes/js2-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/js2-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/markdown-mode/0.el"))
(load-file (concat dotfiles-dir "modes/markdown-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/markdown-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/markdown-mode/hooks.el"))
(load-file (concat dotfiles-dir "modes/markdown-mode/use-pandoc-to-generate-html-previews.el"))
(load-file (concat dotfiles-dir "modes/ruby-mode/0.el"))
(load-file (concat dotfiles-dir "modes/ruby-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/ruby-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/ruby-mode/autopair-on.el"))
(load-file (concat dotfiles-dir "modes/sh-mode/sh-script.el"))
(load-file (concat dotfiles-dir "modes/sh-mode/0.el"))
(load-file (concat dotfiles-dir "modes/sh-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/sh-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/text-mode/0.el"))
(load-file (concat dotfiles-dir "modes/text-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/text-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/web-mode/0.el"))
(load-file (concat dotfiles-dir "modes/web-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/web-mode/customize.el"))
(load-file (concat dotfiles-dir "modes/yaml-mode/0.el"))
(load-file (concat dotfiles-dir "modes/yaml-mode/auto-mode-alist.el"))
(load-file (concat dotfiles-dir "modes/yaml-mode/customize.el"))
