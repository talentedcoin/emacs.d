(require-package 'elpy)

(elpy-enable)

(setq python-shell-interpreter "ipython")
(setq python-shell-interpreter-args "--simple-prompt")

(provide 'init-python)
