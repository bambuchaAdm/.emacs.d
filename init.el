(defconst +bootstrap-path+ (directory-file-name 
			    (file-name-directory
			     (or (buffer-file-name) load-file-name))))

(add-to-list 'load-path +bootstrap-path+)

(require 'custom-load-path)
(require 'package-setup)

;;Global misc setup
(require 'os-setup)
(require 'buffer-setup)
(require 'frame-setup)
(require 'enable-commands)

;;Major mode setups
(require 'elisp-setup)
(require 'cc-setup)
(require 'python-setup)
(require 'slime-setup)
(require 'nxml-setup)
(require 'compile-setup)
(require 'ruby-setup)
(require 'js2-setup)
(require 'coffee-setup )

;;Mainor mode setups
(require 'ido-setup)
(require 'yasnippet-setup)
(require 'auto-complete-setup)
(require 'flymake-setup)
(require 'expand-region-setup)
(require 'smex-setup)

;;Utility
(require 'bundler)

(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
