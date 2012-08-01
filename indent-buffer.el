(require 'make-mode)
(defun indent-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (unless (eql major-mode makefile-mode)
    (untabify (point-min) (point-max))))