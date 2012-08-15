(require 'cl)

(defun create-path (&rest directories)
  (let ((directories (mapcar #'file-name-as-directory directories))
	(bootstrap-path (file-name-as-directory +bootstrap-path+)))
    (apply #'concat bootstrap-path directories)))

(defun get-direcotries-form-directory-list (paths)
  (remove-if-not #'file-directory-p paths))

(defun clear-from-parent-directory (paths)
  (remove-if (apply-partially #'string-match "^\\.+") paths))

(defun make-absolute-paths (paths)
  (mapcar #'(lambda (x) (expand-file-name x +bootstrap-path+)) paths))

(defun get-absolut-bootstrap-directires ()
  (get-direcotries-form-directory-list
   (clear-from-parent-directory
    (make-absolute-paths 
     (directory-files +bootstrap-path+)))))

(defun add-paths-to-load-path (paths)
  (mapcar (lambda (x) (add-to-list 'load-path x)) paths))

(add-paths-to-load-path (get-absolut-bootstrap-directires))
 
(provide 'custom-load-path)
