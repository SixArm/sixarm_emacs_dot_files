;; package-setup-with-my-packages: automatically install our preferred pacakges.
;;
;; http://technomancy.us/153

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
		      ;;starter-kit 
		      ;;starter-kit-bindings scpaste
		      ;;starter-kit-eshell
		      ;;starter-kit-lisp 
		      ack-and-a-half
		      auctex 
		      deft
		      expand-region
		      gist
		      magit
		      magithub
		      marmalade 
		      oddmuse 
		      paredit
		      projectile
		      scpaste
		      solarized-theme
		      tuareg
		      volatile-highlights 
		      yari 
		      zenburn-theme
		      ;; language pacakges
		      inf-ruby
		      python
		      ;; language mode packages
		      clojure-mode 
		      clojure-test-mode
		      coffee-mode 
		      haml-mode
		      haskell-mode
		      groovy-mode
		      markdown-mode 
		      rainbow-mode 
		      sass-mode
		      scss-mode 
		      yaml-mode 
		      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
