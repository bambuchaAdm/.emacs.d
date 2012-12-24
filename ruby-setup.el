(require 'ruby-mode)
(require 'rhtml-mode)

(defun ruby--jump-to-test ()
  (find-file
   (replace-regexp-in-string
    "/lib/" "/spec/"
    (replace-regexp-in-string
     "/\\([^/]+\\).rb$" "/\\1_spec.rb"
     (buffer-file-name)))))

(defun ruby--jump-to-lib ()
  (find-file
   (replace-regexp-in-string
    "/spec/" "/lib/"
    (replace-regexp-in-string
     "/\\([^/]+\\)_spec.rb$" "/\\1.rb"
     (buffer-file-name)))))

(defun ruby-jump-to-other ()
  (interactive)
  (if (string-match-p "/spec/" (buffer-file-name))
      (ruby--jump-to-lib)
    (ruby--jump-to-test)))

(define-key ruby-mode-map (kbd "C-c j") 'ruby-jump-to-other)

(defun do-end-to-bracket-block ()
  (interactive)
  (save-excursion
	(search-backward-regexp " do *\\(|.+|\\)? *\n\s*")
	(replace-match "{ \\1 ")
	(search-forward-regexp "\n *end")
	(replace-match "}")))

(defun bracket-block-to-do-end ()
  (interactive)
  (save-excursion
	(search-backward-regexp "{ *\\(|[^|]+|\\)?")
	(replace-match " do \\1\n")
	(let ((content-start (point)))
	  (search-forward "}")
	  (replace-match "\nend")
	  (indent-region content-start (point)))))

(define-key ruby-mode-map (kbd "C-c o d") 'bracket-block-to-do-end)
(define-key ruby-mode-map (kbd "C-c o b") 'do-end-to-bracket-block)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

(provide 'ruby-setup)
