(require 'speedbar)
(defconst my-speedbar-buffer-name "SPEEDBAR")
(defvar my-speedbar-window nil)
(defun my-speedbar-no-separate-frame ()
  (interactive)

  (defun clean-on-kill-buffer ()
    (when (eq (current-buffer) speedbar-buffer)
      (setq speedbar-frame nil
	    dframe-attached-frame nil
	    speedbar-buffer nil)
      (speedbar-set-timer nil)))

  (when (not (buffer-live-p speedbar-buffer))
    (setq speedbar-buffer (get-buffer-create my-speedbar-buffer-name)
	  speedbar-frame (selected-frame)
	  dframe-attached-frame (selected-frame)
	  speedbar-select-frame-method 'attached
	  speedbar-verbosity-level 0
	  speedbar-last-selected-file nil)
    (set-buffer speedbar-buffer)
    (speedbar-mode)
    (speedbar-reconfigure-keymaps)
    (speedbar-update-contents)
    (speedbar-set-timer 1)
    (add-hook 'kill-buffer-hook #'clean-on-kill-buffer)
    (delete-other-windows  (selected-window))
    (split-window-horizontally (/ (frame-width) 5))
    (setq my-speedbar-window (selected-window)))

  (set-window-buffer (selected-window)
		     (get-buffer my-speedbar-buffer-name))
  (set-window-dedicated-p (selected-window) t))
 
(defun my-speedbar-select ()
  (interactive)
  (select-window my-speedbar-window))
(global-set-key (kbd "C-x O") #'my-speedbar-select)

(defun my-speedbar-ignore-in-other-window ()
  (interactive)
  (let ((next (next-window)))
    (when (eq (window-buffer next) speedbar-buffer)
	(other-window 1))
    (other-window 1)))
(global-set-key (kbd "C-x o") #'my-speedbar-ignore-in-other-window)
