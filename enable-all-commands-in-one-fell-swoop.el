;; Enable all commands in one fell swoop.
;;
;; From the emacs docs: To protect newbie users from lossage, 
;; some Emacs commands are disabled by default due to their 
;; potentially destructive nature. When one tries to execute such 
;; a command, Emacs will ask you if you really want to do that and 
;; offer to un-disable it by putting a form in your .emacs file.
;;
;; http://emacswiki.org/emacs/DisabledCommands
;;
;; This function enables all the disabled commands.
;;
;; Compare our file enable-all-command.el, which enables all commands
;; one-by-one, and shows which commands are being enabled.

(setq disabled-command-function nil) 
