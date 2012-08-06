(require 'flymake)

(defun flymake-ruby-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))
	 (local-file (file-relative-name
		      temp-file
		      (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))



(add-to-list 'flymake-allowed-file-name-masks
 '(".+\\.rb$" flymake-ruby-init flymake-simple-cleanup flymake-get-real-file-name))

;file line column err-text-idx
(add-to-list 'flymake-err-line-patterns
     '("^\\(.+.rb\\):\\([0-9]*\\): \\(.+\\)$" 1 2 nil 3))


(provide 'flymake-ruby)
