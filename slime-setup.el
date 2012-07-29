(require 'custom-load-path)

(add-to-list 'load-path (system-lisp-subdirecotry "slime"))
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

(provide 'slime-setup)