;; auto-save-off: turn off automatic saving of file buffers.
;;
;; By default, Emacs automatically saves your changes to a file intermittently. 
;; If anything should happen, you can recover a file with ‘M-x recover-file’.
;;
;; Auto-saving can be turned on globally or on a per-buffer basis 
;; with ‘M-x auto-save-mode’. 
;;
;; Note that auto-saving and backing up are different concepts and serve different purposes.

(setq auto-save-default nil)
