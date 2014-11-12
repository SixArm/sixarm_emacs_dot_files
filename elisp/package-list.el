;; Package installation

(require 'package)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Activate all the packages
(package-initialize)

;; Fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; We want these packages
(setq package-list '(
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
                     inf-ruby
                     magit
                     ;;magithub
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
                     ;;zenburn-theme
                     yaml-mode
                     ))

(dolist (p package-list)
  (when (not (package-installed-p p))
    (package-install p)
  )
)
