;; json-uses-js: a JSON file uses the default js-mode.
;; N.b. The js-mode accepts top-level bare objects,
;; which is incorrect behaviour for javascript,
;; but the default in JSON.

(add-to-list 'auto-mode-alist '("\\.json\\'\\|\\.jshintrc\\'" . js-mode))
