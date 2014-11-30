;; search-uses-regexp: kbd search with C-s and C-r uses regular expressions.
;; To run the typical non-regexp searches, use C-M-s and C-M-r.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
