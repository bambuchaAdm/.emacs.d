(require 'custom-load-path)
(require 'lisp-mode)

(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

(defun run-rt-test ()
  (interactive)
  (with-current-buffer (slime-output-buffer)
	(slime-repl-clear-buffer))
  (slime-eval '(rt:do-tests)))

(define-key lisp-mode-map (kbd "C-c r") #'run-rt-test)

(provide 'slime-setup)
