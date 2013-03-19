(require 'ruby-mode)
(require 'rhtml-mode)

(defun ruby--jump-to-test ()
  (find-file
   (replace-regexp-in-string
    "/lib/" "/test/"
    (replace-regexp-in-string
     "/\\([^/]+\\).rb$" "/test_\\1.rb"
     (buffer-file-name)))))

(defun ruby--jump-to-lib ()
  (find-file
   (replace-regexp-in-string
    "/test/" "/lib/"
    (replace-regexp-in-string
     "/test_\\([^/]+\\).rb$" "/\\1.rb"
     (buffer-file-name)))))

(defun ruby-jump-to-other ()
  (interactive)
  (if (string-match-p "/test/" (buffer-file-name))
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

(define-key ruby-mode-map (kbd "C-c o b") 'do-end-to-bracket-block)

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

(defun extract-to-variable (text)
  "Insert string around mark region"
  (interactive "sName:")
  (save-excursion
	(kill-region (mark) (point))
	(search-backward "\n")
	(newline)
	(insert text)
	(insert " = ")
	(yank))
  (insert text))

(define-key ruby-mode-map (kbd "C-c o r") 'extract-to-variable)



(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.watchr$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))

(provide 'ruby-setup)
