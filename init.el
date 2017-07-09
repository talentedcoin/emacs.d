;;; Configuration is divided into a bunch of other files.
;;; (Inspired by https://github.com/purcell/emacs.d/)

;;; Commenting out package-initalize here; it's in init-elpa.el.
;;; (package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-exec-path)
(require 'init-gui)
(require 'init-prefs)
(require 'init-whitespace)
(require 'init-themes)
(require 'init-zoom)
(require 'init-yasnippet)
(require 'init-ggtags)

(require 'init-cpp)
(require 'init-ess)
(require 'init-geiser)
(require 'init-markdown)
(require 'init-python)
(require 'init-tex)

(require 'init-org)

(require 'init-fonts)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
  '(package-selected-packages
     (quote
       (elpy markdown-mode ac-geiser geiser ess ggtags yasnippet zoom-frm grandshell-theme whitespace-cleanup-mode exec-path-from-shell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
