;; meta-space-does-hippie-expand: quick way to autocomplete words.
;;
;; http://trey-jackson.blogspot.com/2007/12/emacs-tip-5-hippie-expand.html
;;
;; If you use Ubuntu 12 or similar, you may need to use Compiz Confi
;; to disable the Ubuntu windowing system setting that uses alt-space:
;;
;;      apt-get install compizconfig-settings-manager
;;
;; Then CompizConfig > General Options > Key Bindings: Window Menu.
;;
;; The author recommends this:
;;
;;   (setq hippie-expand-try-functions-list '(
;;                                            try-expand-dabbrev 
;;                                            try-expand-dabbrev-all-buffers 
;;                                            try-expand-dabbrev-from-kill 
;;                                            try-complete-file-name-partially 
;;                                            try-complete-file-name 
;;                                            try-expand-all-abbrevs 
;;                                            try-expand-list try-expand-line 
;;                                            try-complete-lisp-symbol-partially 
;;                                            try-complete-lisp-symbol
;;                                           ))
(global-set-key "\M- " 'hippie-expand)

