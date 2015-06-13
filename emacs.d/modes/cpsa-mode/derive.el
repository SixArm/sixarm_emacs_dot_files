;; Enable support for Cryptographic Protocol Shapes Analyzer. This is a scheme-ish dialect, so it's a derived from scheme-mode.
;;
;; Cite: http://www.aaronbedra.com/emacs.d

(define-derived-mode cpsa-mode scheme-mode
  (setq mode-name "CPSA")
  (setq cpsa-keywords '("defmacro" "defprotocol" "defrole" "defskeleton" "defstrand"))
  (setq cpsa-functions '("cat" "hash" "enc" "string" "ltk" "privk" "pubk" "invk" "send" "recv"  "non-orig" "uniq-orig" "trace" "vars"))
  (setq cpsa-types '("skey" "akey" "name" "text"))
  (setq cpsa-keywords-regexp (regexp-opt cpsa-keywords 'words))
  (setq cpsa-functions-regexp (regexp-opt cpsa-functions 'words))
  (setq cpsa-types-regexp (regexp-opt cpsa-types 'words))
  (setq cpsa-font-lock-keywords
        `(
          (,cpsa-keywords-regexp . font-lock-keyword-face)
          (,cpsa-functions-regexp . font-lock-function-name-face)
          (,cpsa-types-regexp . font-lock-type-face)))
  (setq font-lock-defaults '((cpsa-font-lock-keywords))))
