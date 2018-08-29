(require-package 'ess)

;; Make sure that we don't echo running code to the console.
(setq ess-eval-visibly nil)

(add-hook 'ess-mode-hook
  (lambda ()
    (ess-toggle-underscore nil)))

(provide 'init-ess)
