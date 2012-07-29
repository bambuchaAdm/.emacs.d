(require 'custom-load-path)
(require 'auto-complete-config)

(defconst +auto-complete-ditct-path+ "~/emacs.d/auto-compete/ac-dict")

(add-to-list 'ac-dictionary-directories +auto-complete-ditct-path+)
(ac-config-default)
(global-set-key (kbd "<backtab>") #'auto-complete)

(provide 'autocomplate-setup)