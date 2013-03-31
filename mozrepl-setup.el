(require 'moz)

(defun moz-refresh-page ()
  (interactive)
  (comint-send-string (inferior-moz-process)
					  (concat moz-repl-name ".pushenv('printPrompt'); "
                              moz-repl-name ".setenv('printPrompt', false); "))
  (sleep-for 0 1)
  (comint-send-string (inferior-moz-process) "BrowserReloadSkipCache();")
  (comint-send-string (inferior-moz-process)
					  (concat moz-repl-name ".popenv('printPrompt')")))

(provide 'mozrepl-setup)
