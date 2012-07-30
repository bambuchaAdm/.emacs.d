(require 'custom-load-path)

(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

(provide 'slime-setup)
