;; file-name-shadow-adjuster: when selecting a file to visit, adjust paths.
;;
;;    "//" adjsuts to "/"
;;    "~" adjusts to $HOME regardless of preceding text.

(setq file-name-shadow-tty-properties '(invisible t))
(file-name-shadow-mode 1)
