(add-hook 'markdown-mode-hook
          (lambda ()
            (visual-line-mode t)
            (writegood-mode t)
            (flyspell-mode t)))
