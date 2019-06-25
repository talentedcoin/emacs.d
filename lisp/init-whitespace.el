
(require-package 'whitespace-cleanup-mode)
(global-whitespace-cleanup-mode t)



;; Always save tabs as spaces.
(setq-default indent-tabs-mode nil)

;; I decided to stick with width-4 tabs ...
(setq lisp-indent-offset 4)
(setq tab-width 4)
(setq default-tab-width 4)
(setq js-indent-level 4)
(setq c-basic-offset 4)


(add-hook 'sql-mode-hook '(lambda ()
                            (setq indent-tabs-mode nil tab-width 4
                              indent-line-function 'insert-tab)))

(provide 'init-whitespace)
