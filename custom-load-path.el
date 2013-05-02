(require 'cl)

(defun create-directory-repository-path (&rest directories)
  (let ((directories (mapcar #'file-name-as-directory directories))
	(bootstrap-path (file-name-as-directory +bootstrap-path+)))
    (apply #'concat bootstrap-path directories)))

(defun get-direcotries-form-directory-list (paths)
  (remove-if-not #'file-directory-p paths))

(defun clear-from-parent-directory (paths)
  (remove-if (apply-partially #'string-match "^\\.+") paths))

(defun make-absolute-paths (expand-file paths)
  (mapcar #'(lambda (x) (expand-file-name x expand-file)) paths))

(defun get-absolut-bootstrap-directires ()
  (get-direcotries-form-directory-list
   (make-absolute-paths +bootstrap-path+
    (clear-from-parent-directory
     (directory-files +bootstrap-path+)))))

(defun add-paths-to-load-path (paths)
  (mapcar (apply-partially #'add-to-list 'load-path) paths))

(add-paths-to-load-path (get-absolut-bootstrap-directires))
 
(provide 'custom-load-path)
