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
;;
;; In vanilla emacs, automatic package loading occurs after loading the
;; init file; user options only receive their customized values after
;; loading the init file, including user options which may affect the
;; packaging system.
;;
;; We want to load packages explicitly in our init file, because some other
;; code in our init file depends on a package. Therefore we are calling the
;; function package-initialize. We ensure that relevant user options, such as
;; package-load-list, are set up prior to the package-initialize call.
;;
;; We also set package-enable-at-startup to nil, to avoid loading the packages
;; again after processing the init file.
(unless package--initialized (package-initialize t))
(setq package-enable-at-startup nil)

;; We want these packages
(defvar package-list '(
  ;;starter-kit
  ;;starter-kit-bindings scpaste
  ;;starter-kit-eshell
  ;;starter-kit-lisp
  ac-slime
  auctex
  auto-complete
  autopair
  clojure-mode
  coffee-mode
  ;;company-mode
  ;;company-tern
  ;;company-quickhelp
  ;;company-web
  counsel-etags
  csharp-mode
  deft
  erlang
  ;;eslint
  expand-region
  feature-mode
  flx
  ;;flx-ido
  flycheck
  gist
  go-mode
  go-projectile
  graphviz-dot-mode
  groovy-mode
  haml-mode
  haskell-mode
  helm
  helm-projectile
  helm-rails
  helm-rb
  helm-rubygems-local
  helm-rubygems-org
  htmlize
  inf-ruby
  js2-highlight-vars
  js2-mode
  js2-refactor
  magit
  markdown-mode
  marmalade
  nodejs-repl
  o-blog
  oddmuse
  org
  org-projectile
  org-trello
  org-vcard
  paredit
  php-mode
  puppet-mode
  ;;prettier
  projectile
  projectile-codesearch
  projectile-rails
  projectile-speedbar
  python
  rainbow-mode
  rainbow-mode
  restclient
  rjsx-mode
  rust-mode
  sass-mode
  scala-mode
  scpaste
  scss-mode
  smex
  sml-mode
  ;;solarized-theme
  tide
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
