;; soft-tabs: backward delete whitespace to column.
;;
;; From https://news.ycombinator.com/item?id=1654164

(defun backward-delete-whitespace-to-column ()
  "delete back to the previous column of whitespace, or just one
    char if that's not possible. This emulates vim's softtabs
    feature."
  (interactive)
  (if indent-tabs-mode
      (call-interactively 'backward-delete-char-untabify)
    ;; let's get to work
    (let ((movement (% (current-column) tab-width))
          (p (point)))
      ;; brain freeze, should be easier to calculate goal
            (when (= movement 0) (setq movement tab-width))
            (if (save-excursion
                  (backward-char movement)
                  (string-match "^\\s-+$" (buffer-substring-no-properties (point) p)))
                (delete-region (- p movement) p)
              (call-interactively 'backward-delete-char-untabify)))))

(global-set-key (kbd "<DEL>") 'backward-delete-whitespace-to-column)
