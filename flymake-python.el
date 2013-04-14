(require 'flymake)

(defun handle-oridinary-python-file (file-name)
  (list "python" (list "-m" "py_compile" file-name)))

(defconst +app-regexp+ "\\([^/]*\\)/*")

(defun flymake-python-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
		 (local-file (file-relative-name
					  temp-file
					  (file-name-directory buffer-file-name))))
	(handle-oridinary-python-file local-file)))

(add-to-list 'flymake-allowed-file-name-masks
 '(".+\\.py$" flymake-python-init flymake-simple-cleanup flymake-get-real-file-name))

;file line column err-text-idx
(add-to-list 'flymake-err-line-patterns
     '("^\\([[:alpha:]]+\\):.+'\\([[:alpha:] ]+\\).+('\\(.+\\)', +\\([0-9]+\\), +\\([0-9]+\\)" 3 4 5 2))

(provide 'flymake-python)
