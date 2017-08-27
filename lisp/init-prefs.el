;; Unbind C-x C-c from quit, because it's way too easy to type accidentally.
(global-unset-key "\C-x\C-c")

;; Attempt to put all backups in a convenient location.
(defvar backup-dir "~/.emacs.d/backups/")
(setq backup-directory-alist (list (cons "." backup-dir)))

;; Also put autosaves in a somewhat less convenient location.
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Why wouldn't I want to save the minibuffer history?
(savehist-mode 1)

;; Set syntax highlighting to the noisiest possible setting.
(setq font-lock-maximum-decoration t)

;; Turn off that awful beeping!
(setq visible-bell 1)

;; Rebind meta to Ctrl key (good idea per Steve Yegge).
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Muck up backward-kill-word (another good idea via Steve Yegge).
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Make f5 the "refresh" key.
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )
(global-set-key [f5] 'refresh-file)

;; Show the full system and file path in the status bar.
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))


;; Turn off the splash screen.
(setq inhibit-splash-screen t)

;; Set fill-column to 80.
(setq-default fill-column 80)

;; Set column-number-mode to true (it's helpful for Git messages).
(setq column-number-mode t)

;; Turn off visual line mode (word wrap).
(setq-default truncate-lines t)

(provide 'init-prefs)
