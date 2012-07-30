(require 'flymake)

(defun flymake-python-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "python" (list local-file))))



(add-to-list 'flymake-allowed-file-name-masks
 '(".+\\.py$" flymake-python-init flymake-simple-cleanup flymake-get-real-file-name))

;file line column err-text-idx
(add-to-list 'flymake-err-line-patterns
     '("File \"\\(.*\\)\", line \\(.*\\), in \\(.*\\(:?\n.*\n\\).*\\)" 1 2 nil 3))


(provide 'flymake-python)
