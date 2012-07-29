(put 'narrow-to-region 'disabled nil)

;;Narrow command
(enable-command 'narrow-to-region)
(enable-command 'narrow-to-defun)
(enable-command 'narrow-to-page)

;;Upcase downcase region
(enable-command 'upcase-region)
(enable-command 'downcase-region)

;;By emacs
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(provide 'enable-commands)