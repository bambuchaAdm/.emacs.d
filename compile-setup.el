(require 'compile)

(define-key compilation-mode-map (kbd "q") #'delete-window)
(global-set-key (kbd "C-c C-m") #'recompile)

(defun take-focus-on-fail-compilation (buffer message)
  (when (string-match-p "abnormally" message)
    (select-window (get-buffer-window buffer))))
(add-hook 'compilation-finish-functions #'take-focus-on-fail-compilation)

(defun close-compilation-window-when-success (buffer)
  (let ((window (get-buffer-window buffer)))
    (when window
      (delete-window window))))

(defun layzzy-close-compilation-window (buffer message)
  (let ((function (apply-partially #'close-compilation-window-when-success buffer)))
    (when (string-match-p "finished" message)
      (run-with-timer 1 nil function))))
(add-hook 'compilation-finish-functions #'layzzy-close-compilation-window)

(provide 'compile-setup)


















