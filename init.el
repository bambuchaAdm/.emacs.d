(defconst +bootstrap-path+ "/home/bambucha/.emacs.d")
(add-to-list 'load-path +bootstrap-path+)

(require 'custom-load-path)
(require 'cedet-devel-load)

;;Global misc setup
(require 'os-setup)
(require 'buffer-setup)
(require 'frame-setup)
(require 'enable-commands)

;;Major mode setups
(require 'cc-setup)
(require 'python-setup)
(require 'slime-setup)
(require 'nxml-setup)
(require 'compile-setup)

;;Mainor mode setups
(require 'yasnippet-setup)
(require 'autocomplate-setup)
(require 'flymake-setup)
(require 'expand-region-setup)
(require 'smex-setup)

;;Temporaly for development semantic-ruby
(add-to-list 'load-path "/home/bambucha/ruby/emacs")


(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
