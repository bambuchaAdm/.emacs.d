(require 'uniquify)

(iswitchb-mode 1)
(show-paren-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(require 'bs)
(global-set-key (kbd "C-c C-b") #'bs-show)

(provide 'buffer-setup)


















