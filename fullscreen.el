(defvar *fullscreen-is-maximaliezd* nil)

(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (setq *fullscreen-is-maximaliezd* (not *fullscreen-is-maximaliezd*)))

(global-set-key (kbd "<f11>") 'toggle-fullscreen)

(when (and window-system (not *fullscreen-is-maximaliezd*))
  (toggle-fullscreen))

(provide 'fullscreen)
