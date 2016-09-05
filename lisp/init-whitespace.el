
(require-package 'whitespace-cleanup-mode)
(global-whitespace-cleanup-mode t)



;; Always save tabs as spaces.
(setq-default indent-tabs-mode nil)

;; I decided to stick with width-2 tabs ...
(setq lisp-indent-offset 2)
(setq tab-width 2)
(setq default-tab-width 2)
(setq js-indent-level 2)

;; ... except for whitespace-heavy languages like Python or SQL.
(setq-default python-indent-offset 4)
(setq-default py-indent-offset 4)

(add-hook 'python-mode-hook
  (function (lambda ()
              (setq indent-tabs-mode nil
                tab-width 4))))

(add-hook 'sql-mode-hook '(lambda ()
                            (setq indent-tabs-mode nil tab-width 4
                              indent-line-function 'insert-tab)))

(provide 'init-whitespace)
