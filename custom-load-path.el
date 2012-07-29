(defconst +system-lisp-directory+ "/usr/share/emacs/site-lisp")

(defun system-lisp-subdirecotry (directory-name)
  (file-name-as-directory 
   (concat (file-name-as-directory +system-lisp-directory+) directory-name)))

(defun get-direcotries-form-directory (path)
  (remove-if-not #'file-directory-p (directory-files path)))

(defun clear-from-parent-directory (paths)
  (remove-if (apply-partially #'string-match "^\\.+") paths))

(defun make-absolute-paths (paths)
  (mapcar #'expand-file-name paths))

(defun add-paths-to-load-path (paths)
  (mapcar (apply-partially #'add-to-list 'load-path) paths))

(add-paths-to-load-path 
 (make-absolute-paths (clear-from-parent-directory 
		       (get-direcotries-form-directory "."))))

(provide 'custom-load-path)