(require 'compile)
(define-key compilation-mode-map (kbd "q") #'delete-window)
(provide 'compile-setup)