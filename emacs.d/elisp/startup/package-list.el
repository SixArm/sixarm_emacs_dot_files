;; Install our favorite packages

;; Require
(require 'package)
(require 'cl)

;; Add package archives
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Activate all the packages
(package-initialize)

;; We want these packages
(defvar package-list '(
                       ;;starter-kit
                       ;;starter-kit-bindings scpaste
                       ;;starter-kit-eshell
                       ;;starter-kit-lisp
                       ack-and-a-half
                       auctex
                       clojure-mode
                       clojure-test-mode
                       coffee-mode
                       deft
                       expand-region
                       gist
                       groovy-mode
                       haml-mode
                       haskell-mode
                       helm
                       helm-projectile
                       inf-ruby
                       magit
                       markdown-mode
                       marmalade
                       oddmuse
                       paredit
                       projectile
                       python
                       rainbow-mode
                       rainbow-mode
                       sass-mode
                       scpaste
                       scss-mode
                       ;;solarized-theme
                       tuareg
                       volatile-highlights
                       yari
                       yasnippet
                       yaml-mode
                       ))

;; Is every package in our list already installed?
;; This helps us speed up startup, because if all the
;; packages are already installed then we can skip refresh
(defun package-list-installed-p ()
  (loop for p in package-list
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

;; Install packages as needed
(unless (package-list-installed-p)
  (package-refresh-contents)
  (dolist (p package-list)
    (when (not (package-installed-p p))
      (package-install p)
      )))

(provide 'package-list)
