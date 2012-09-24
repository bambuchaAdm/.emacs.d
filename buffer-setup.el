(require 'uniquify)

(show-paren-mode 1)
(auto-fill-mode 1)
(delete-selection-mode 1)
(setf uniquify-buffer-name-style 'post-forward)

(set-default 'tab-width 4)

(require 'bs)
(global-set-key (kbd "C-x C-b") #'bs-show)


;;I don't know where put this stuf.
(defun insert-quoutes-over-mark (text)
  "Insert string around mark region"
  (interactive "sText:")
  (insert text)
  (exchange-point-and-mark)
  (insert text))
(global-set-key (kbd "C-'") #'insert-quoutes-over-mark)

(provide 'buffer-setup)


















