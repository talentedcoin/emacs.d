;; (require 'js-comint)
;; (require 'indium)

;; (add-hook 'js-mode-hook #'indium-interaction-mode)
;; (setq js2-strict-missing-semi-warning nil)
;; (setq js2-missing-semi-one-line-override t)


(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; ;; (defun inferior-js-mode-hook-setup ()
;; ;;   (add-hook 'comint-output-filter-functions 'js-comint-process-output))
;; ;; (add-hook 'inferior-js-mode-hook 'inferior-js-mode-hook-setup t)

;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
;;             (local-set-key (kbd "C-M-x") 'js-send-last-sexp-and-go)
;;             (local-set-key (kbd "C-c b") 'js-send-buffer)
;;             (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)
;;             (local-set-key (kbd "C-c l") 'js-load-file-and-go)))

;; (add-hook 'js2-mode-hook 'skewer-mode)
;; (add-hook 'css-mode-hook 'skewer-css-mode)
;; (add-hook 'html-mode-hook 'skewer-html-mode)

(provide 'init-javascript)
