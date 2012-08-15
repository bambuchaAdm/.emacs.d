(require 'uniquify)

(iswitchb-mode 1)
(show-paren-mode 1)
(auto-fill-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(require 'bs)
(global-set-key (kbd "C-x C-b") #'bs-show)

(provide 'buffer-setup)


















