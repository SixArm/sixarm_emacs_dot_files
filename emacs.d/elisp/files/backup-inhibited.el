;; backup-inhibited: disable automatic backups of file buffers.
;;
;; From the emacs docs: if this variable is non-nil, backups are inhibited.
;; This is a permanent local, so that changing the major mode does not lose its value.
;;
;; If you prefer fine-grain control of file backups, read about `make-backup-files`.
;;
;; See http://www.gnu.org/software/emacs/manual/html_node/elisp/Making-Backups.html

(setq backup-inhibited t)
