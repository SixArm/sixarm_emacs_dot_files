;; Enable all commands.
;;
;; From the emacs docs: To protect newbie users from lossage, 
;; some Emacs commands are disabled by default due to their 
;; potentially destructive nature. When one tries to execute such 
;; a command, Emacs will ask you if you really want to do that and 
;; offer to un-disable it by putting a form in your .emacs file.
;;
;; http://emacswiki.org/emacs/DisabledCommands
;;
;; This function enables all the disabled commands, and shows which commands 
;; were disabled (which are therefore likely to be powerful and interesting).
;;
;; Compare our file enable-all-commands-in-one-fell-swoop.el,
;; which enables all commands by setting disabled-command-function.

(defun enable-all-commands ()
  "Enable all commands, reporting on which were disabled."
  (interactive)
  (with-output-to-temp-buffer "*Commands that were disabled*"
    (mapatoms
     (function
      (lambda (symbol)
	(when (get symbol 'disabled)
	  (put symbol 'disabled nil)
	  (prin1 symbol)
	  (princ "\n")))))))

