(tool-bar-mode -1)
(menu-bar-mode -1)
(set-face-attribute 'default nil :height 150)
(setq inhibit-splash-screen t)
(require 'fullscreen)

(require 'nyan-mode)
(nyan-mode 1)
(scroll-bar-mode -1)

(provide 'frame-setup)
