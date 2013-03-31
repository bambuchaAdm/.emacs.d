(require 'custom-load-path)

(require 'yasnippet)

(setq yas-trigger-key nil
	  yas-triggers-in-field t
	  yas-snippet-dirs (list (create-directory-repository-path "snippets")))
(yas-reload-all)
(yas-global-mode 1)

(provide 'yasnippet-setup)
