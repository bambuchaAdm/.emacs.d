(require 'uniquify)

(ido-mode 1)
(show-paren-mode 1)
(auto-fill-mode 1)
(delete-selection-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(set-default 'tab-width 4)

(require 'bs)
(global-set-key (kbd "C-x C-b") #'bs-show)

(provide 'buffer-setup)


















