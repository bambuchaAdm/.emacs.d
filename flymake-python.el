(require 'flymake)

(defun handle-oridinary-python-file (file-name)
  (list "python" (list "-m" "py_compile" file-name)))

(defconst +app-regexp+ "\\([^/]*\\)/*")

(defun handle-django-project-file (file-name)
  (let* ((file-path (expand-file-name file-name))
	(manage-path (django-project-p file-path))
	(manage-file (concat manage-path "manage.py"))
	(regexp (concat (subseq manage-path 2) +app-regexp+))
	(appname (progn (string-match regexp file-path) (match-string 1 file-path))))
    (list "python" (list (expand-file-name manage-file) "test" appname))))

(defun flymake-python-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (if (django-project-p (expand-file-name local-file))
	(handle-django-project-file local-file)
	(handle-oridinary-python-file local-file))))

(add-to-list 'flymake-allowed-file-name-masks
 '(".+\\.py$" flymake-python-init flymake-simple-cleanup flymake-get-real-file-name))

;file line column err-text-idx
(add-to-list 'flymake-err-line-patterns
     '("^\\([[:alpha:]]+\\):.+'\\([[:alpha:] ]+\\).+('\\(.+\\)', +\\([0-9]+\\), +\\([0-9]+\\)" 3 4 5 2))

(provide 'flymake-python)
