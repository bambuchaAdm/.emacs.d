(require 'js2-mode)

(setf (cdr (assoc "\\.js\\'" auto-mode-alist)) #'js2-mode)
(setf (cdr (assoc "\\.json\\'" auto-mode-alist)) #'js2-mode)

(provide 'js2-setup)
