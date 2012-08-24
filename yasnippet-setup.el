(require 'custom-load-path)

(require 'yasnippet)

(setf yas-trigger-key nil) ;;use auto-complate as a trigger
(setf yas/snippet-dirs  (list (create-path "yasnippet" "snippets")))
(yas/global-mode 1)

(provide 'yasnippet-setup)
