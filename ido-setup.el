(require 'ido)
(ido-mode 1)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10)

(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(provide 'ido-setup)
