;; A before-save-hook that will delete trailing whitespace when saving a file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
