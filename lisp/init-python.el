;; (require 'anaconda-mode)
;; (add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'anaconda-eldoc-mode)

(setq python-shell-interpreter "python")

;;(setq python-shell-interpreter "ipython")
;;(setq python-shell-interpreter-args "-i --simple-prompt")

;;(require 'conda)
;;(conda-env-initialize-interactive-shells)
;;(conda-env-initialize-eshell)
;;(conda-env-autoactivate-mode t)

(require 'elpy)
(elpy-enable)

(require 'pyvenv)
(setenv "WORKON_HOME" "/Users/Ryan/anaconda3/envs")
(pyvenv-mode 1)

(custom-set-variables '(conda-anaconda-home "/Users/ryan/anaconda3/"))

(provide 'init-python)
