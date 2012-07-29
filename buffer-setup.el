(require 'uniquify)

(message "%s" "Ladowanie ustawien bufforow")
(iswitchb-mode 1)
(show-paren-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(global-set-key (kbd "C-c C-b") #'bs-show)


(provide 'buffer-setup)


















