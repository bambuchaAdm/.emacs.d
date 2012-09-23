(require 'auto-complete-config)

(ac-config-default)

(global-set-key (kbd "<backtab>") #'auto-complete)
(setq-default ac-sources (append '(ac-source-yasnippet) ac-sources))

(provide 'auto-complete-setup)
