(require 'flymake)

(defun flymake-python-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "nosetests" (list "-v" "1"))))



(add-to-list 'flymake-allowed-file-name-masks
 '(".+\\.py$" flymake-python-init flymake-simple-cleanup flymake-get-real-file-name))

;(setq flymake-err-line-patterns
;      (cons '("\\(.*\\) at \\([^ \n]+\\) line \\([0-9]+\\)[,.\n]"
;	      2 3 nil 1)
;	    flymake-err-line-patterns))

(provide 'flymake-python)
