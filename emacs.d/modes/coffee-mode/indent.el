;; Improve CoffeeScript:
;;
;;  * Turn everything into 2 space indentations.
;;  * Protect indentation errors every time you modify a file.
;;
;; Credit: http://www.aaronbedra.com/emacs.d

(defun coffee-custom ()
  "coffee-mode-hook"
  (make-local-variable 'tab-width)
  (set 'tab-width 2))

(add-hook 'coffee-mode-hook 'coffee-custom)
