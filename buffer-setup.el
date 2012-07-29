(require 'uniquify)

(message "%s" "Ladowanie ustawien bufforow")
(iswitchb-mode 1)
(show-paren-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(define-key global-map (kbd "C-c C-b") #'bs-show)


(provide 'buffer-setup)


















