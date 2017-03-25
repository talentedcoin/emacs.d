(require-package 'elpy)

(elpy-enable)

(setq python-shell-interpreter "ipython3")
(setq python-shell-interpreter-args "--simple-prompt")

(provide 'init-python)
