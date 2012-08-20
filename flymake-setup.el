(require 'flymake)

;;Add hand-made flymake-support
(require 'flymake-python)
(require 'flymake-ruby)

(add-hook 'find-file-hook 'flymake-find-file-hook)

;; Remove xml and html check
(defun remove-xml-support ()
  (delete-if #'(lambda (x) (string-match-p "\\(xml\\|html\\)" (car x)))
	     flymake-allowed-file-name-masks))

(remove-xml-support)

(provide 'flymake-setup)