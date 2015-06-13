;; Use pandoc to generate HTML previews from within the mode
(setq markdown-command "pandoc --smart -f markdown -t html")

;; Use a custom css file to make it a little prettier.
(setq markdown-css-path (expand-file-name "markdown.css" abedra/vendor-dir))
