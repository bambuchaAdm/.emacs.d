(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun config-whitespace-mode-with-coffee ()
  (setq whitespace-action '(auto-cleanup))
  (setq whitespace-style 
	'(trailing space-before-tab indentation empty space-after-tab))
  (whitespace-mode 1))
(add-hook 'coffee-mode-hook #'config-whitespace-mode-with-coffe)


(defun config-tab-width-with-coffee ()
  (setq coffee-tab-width 2))
(add-hook 'coffee-mode-hook #'config-tab-width-with-coffee)

(require 'auto-complete-setup)

(add-to-list 'ac-modes #'coffee-mode)

(provide 'coffee-setup)
