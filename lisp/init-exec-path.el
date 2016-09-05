(require-package 'exec-path-from-shell)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; (setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
;; (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;; (setenv "PATH" (concat "/usr/texbin" ":" (getenv "PATH")))


(provide 'init-exec-path)
