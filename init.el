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
