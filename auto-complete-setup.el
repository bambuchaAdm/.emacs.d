(require 'auto-complete-config)

(setq-default ac-sources 
			  '(ac-source-abbrev
				ac-source-dictionary
				ac-source-words-in-same-mode-buffers
				ac-source-yasnippet))
(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
(add-hook 'css-mode-hook 'ac-css-mode-setup)
(add-hook 'auto-complete-mode-hook 'ac-common-setup)
(global-auto-complete-mode t)

(global-set-key (kbd "<backtab>") #'auto-complete)
 
(setq ac-use-menu-map t
	  ac-use-fuzzy t)

(provide 'auto-complete-setup)
