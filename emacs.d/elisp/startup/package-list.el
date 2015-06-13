;; Install our favorite packages

;; Require
(require 'package)
(require 'cl)

;; Setup
(load "package")

;; Add package archives
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Activate all the packages
(package-initialize)

;; We want these packages
(defvar package-list '(
                       ;;starter-kit
                       ;;starter-kit-bindings scpaste
                       ;;starter-kit-eshell
                       ;;starter-kit-lisp
                       ac-slime
                       auto-complete
                       autopair
                       ack-and-a-half
                       auctex
                       clojure-mode
                       clojure-test-mode
                       coffee-mode
                       csharp-mode
                       deft
                       erlang
                       expand-region
                       feature-mode
                       flycheck
                       gist
                       go-mode
                       graphviz-dot-mode
                       groovy-mode
                       haml-mode
                       haskell-mode
                       helm
                       helm-projectile
                       htmlize
                       inf-ruby
                       js2-mode
                       magit
                       markdown-mode
                       marmalade
                       nrepl
                       nodejs-repl
                       o-blog
                       oddmuse
                       org
                       paredit
                       php-mode
                       puppet-mode
                       projectile
                       python
                       rainbow-mode
                       rainbow-mode
                       restclient
                       ;;rvm
                       sass-mode
                       scala-mode
                       scpaste
                       scss-mode
                       smex
                       sml-mode
                       ;;solarized-theme
                       tuareg
                       volatile-highlights
                       web-mode
                       writegood-mode
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
