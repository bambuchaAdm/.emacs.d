(require 'flymake)

;;Add hand-made flymake-support
(require 'flymake-python)
(require 'flymake-ruby)

(add-hook 'find-file-hook 'flymake-find-file-hook)

(provide 'flymake-setup)