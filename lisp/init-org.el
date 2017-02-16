(require 'org)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/AIMCo.org"
                         "~/org/home.org"
                         "~/org/economics.org"))

(provide 'init-org)
