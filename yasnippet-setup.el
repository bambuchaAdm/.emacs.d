(require 'custom-load-path)

(require 'yasnippet)

(setf yas/snippet-dirs  (list "~/.emacs.d/yasnippet/snippets/"))
(yas/global-mode 1)
(global-set-key (kbd "C-c TAB") 'yas/expand)

(provide 'yasnippet-setup)
