;; before-save-hook-to-delete-trailing-whitespace: clean up typical chaff

(add-hook 'before-save-hook 'delete-trailing-whitespace)
