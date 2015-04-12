;; Change indentation from default 4 spaces to 2 spaces.
;;
;; Credit: http://www.aaronbedra.com/emacs.d/

(defun js-custom ()
  "js-mode-hook"
  (setq js-indent-level 2))

(add-hook 'js-mode-hook 'js-custom)
