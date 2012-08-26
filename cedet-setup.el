(require 'cedet-devel-load)
(custom-set-variables
 '(ede-project-directories t))

(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)

;; Enable Semantic
(semantic-mode 1)

;; Enable EDE (Project Management) features
(global-ede-mode 1)

(provide 'cedet-setup)
