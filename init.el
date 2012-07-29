(add-to-list 'load-path (expand-file-name "."))

(require 'custom-load-path)
;;Global misc setup
(require 'os-setup)
(require 'buffer-setup)
(require 'frame-setup)
(require 'enable-commands)

;;;Major mode setups
(require 'cc-setup)
(require 'python-setup)
(require 'slime-setup)
(require 'nxml-setup)

;;;Mainor mode setups
(require 'autocomplate-setup)
(require 'yasnippet-setup)


(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
