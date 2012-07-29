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
(require 'yassnippet-setup)
