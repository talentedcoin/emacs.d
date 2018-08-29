(require 'org)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

(setq org-storage-path "~/Library/Mobile Documents/com~apple~CloudDocs/Org/")

(setq org-inbox-path (concat org-storage-path "inbox.org"))
(setq org-master-path (concat org-storage-path "master.org"))
(setq org-suspense-path (concat org-storage-path "suspense.org"))
(setq org-someday-path (concat org-storage-path "someday.org"))


(setq org-agenda-files (cons org-inbox-path
                          (cons org-master-path org-suspense-path)))

(setq org-capture-templates '(("t" "Todo [inbox]" entry
                               (file+headline org-inbox-path "Tasks")
                               "* TODO %i%?")
                              ("T" "Suspense" entry
                               (file+headline org-suspense-path "Suspense")
                               "* %i%? \n %U")))

(setq org-refile-targets '((org-master-path :maxlevel . 3)
                           (org-someday-path :level . 1)
                           (org-suspense-path :maxlevel . 2)))


(provide 'init-org)
