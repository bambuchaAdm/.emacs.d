(require 'cl)

(defun create-path (&rest directories)
  (let ((directories (mapcar #'file-name-as-directory directories))
	(bootstrap-path (file-name-as-directory +bootstrap-path+)))
    (apply #'concat bootstrap-path directories)))

(defun get-direcotries-form-directory-list (paths)
  (remove-if-not #'file-directory-p paths))

(defun clear-from-parent-directory (paths)
  (remove-if (apply-partially #'string-match "^\\.+") paths))

(defun make-absolute-paths (paths expand-file)
  (mapcar #'(lambda (x) (expand-file-name x expand-file)) paths))

(defun recursive-directory-file (path)
  (when path
    (let ((files (claer-form-parent-(directory-files path)))
      
      

(defun get-absolut-bootstrap-directires ()
  (get-direcotries-form-directory-list
   (make-absolute-paths 
    (clear-from-parent-directory
     (directory-files +bootstrap-path+)))))

(defun add-paths-to-load-path (paths)
  (mapcar (lambda (x) (add-to-list 'load-path x)) paths))

(add-paths-to-load-path (get-absolut-bootstrap-directires))
 
(provide 'custom-load-path)
