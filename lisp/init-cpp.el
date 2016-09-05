;; Use Ctrl-x up-arrow to switch between header and implementation.
(add-hook 'c-mode-common-hook
  (lambda() 
    (local-set-key  (kbd "C-x <up>") 'ff-find-other-file)))

(provide 'init-cpp)
