(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

(define-key css-mode-map (kbd "<f5>") 'moz-refresh-page)

(provide 'css-setup)
