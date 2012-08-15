(require 'flymake)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(provide 'flymake-setup)