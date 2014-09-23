(require 'cc-mode)

(defun cc-mode-compile-keybind ()
  (define-key c-mode-base-map (kbd "C-c C-l") 'recompile))

(add-hook 'c-initialization-hook #'cc-mode-compile-keybind)

(defun cc-mode-CR-do-indent ()
  (define-key c-mode-base-map (kbd "C-m") 'c-context-line-break))

(add-hook 'c-initialization-hook #'cc-mode-CR-do-indent)

(defun cc-mode-major-modes () 
  (c-toggle-auto-hungry-state 1)
  (c-toggle-syntactic-indentation 1)
  (subword-mode 1))

(add-hook 'c-initialization-hook #'cc-mode-major-modes)

(defun cc-mode-buffer-config ()
  (c-set-style "bsd")
  (setq c-basic-offset 4))

(add-hook 'c-mode-common-hook #'cc-mode-buffer-config)

(provide 'cc-setup)
