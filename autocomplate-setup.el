(require 'auto-complete-config)

(ac-config-default)

(global-set-key (kbd "<backtab>") #'auto-complete)
(setq-default ac-sources (append '(ac-source-yasnippet) ac-sources))

(setq ac-use-menu-map t
	  ac-use-fuzzy t)

(provide 'autocomplate-setup)
