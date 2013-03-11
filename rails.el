

(defun rails-source-p (path)
  (string-match-p "/app/" path))

(defun rails-spec-p (path)
  (string-match-p "/spec/" path))

(defun rails-jump-to-spec-file ()
  (interactive)
  (find-file
   (let ((path (buffer-file-name)))
	 (replace-regexp-in-string
	  "/app/" "/spec/"
	  (replace-regexp-in-string
	   "\.rb" "_spec\.rb" path)))))

(defun rails-jump-to-source-file ()
  (interactive)
  (find-file
   (let ((path (buffer-file-name)))
	 (replace-regexp-in-string
	  "/spec/" "/app/"
	  (replace-regexp-in-string
	   "_spec\.rb" "\.rb" path)))))

(defun rails-jumps-between-file ()
  (interactive)
  (let ((path (buffer-file-name)))
	(cond
	 ((rails-spec-p path) (rails-jump-to-source-file))
	 ((rails-source-p path) (rails-jump-to-spec-file)))))

(define-key ruby-mode-map (kbd "C-c C-j") #'rails-jumps-between-file) 


