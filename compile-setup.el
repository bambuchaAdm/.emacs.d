(require 'compile)

(define-key compilation-mode-map (kbd "q") #'delete-window)
(global-set-key (kbd "C-c C-m") #'recompile)

(defun close-compilation-window-when-success (buffer)
  (let ((window (get-buffer-window buffer)))
    (when window
      (delete-window window))))

(defun layzzy-close-compilation-window (buffer message)
  (when (string-match-p "finished" message)
    (run-with-timer 1
		    nil
		    (apply-partially #'close-compilation-window-when-success buffer))
  (message "Timer started")))

(add-hook 'compilation-finish-functions #'layzzy-close-compilation-window)


(provide 'compile-setup)


















