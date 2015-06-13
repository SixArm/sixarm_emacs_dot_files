;; Indicate empty lines.
;;
;; When `indicate-empty-lines` is non-nil, Emacs displays a special
;; glyph in the fringe of each empty line at the end of the buffer,
;; on graphical displays. See Fringes. This variable is automatically
;; buffer-local in every buffer.
;;
;; See http://www.gnu.org/software/emacs/manual/html_node/elisp/Fringe-Indicators.html

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))
