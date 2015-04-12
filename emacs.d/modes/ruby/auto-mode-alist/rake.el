;; rake-is-ruby: tell emacs that "Rakefile" and "*.rake" are Ruby.

(dolist (exp '("Rakefile\\'" "\\.rake\\'"))
  (add-to-list 'auto-mode-alist
               (cons exp 'ruby-mode)))
