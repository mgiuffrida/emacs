;;;; Settings
(setq fill-column 80
      frame-title-format '((buffer-name "%f" ("%b")) " :: emacs")
      inhibit-startup-screen t)

;; Default settings
(setq-default indent-tabs-mode nil)

;; Disable warnings
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;; Other functionality
(set-keyboard-coding-system nil)

(show-paren-mode 1)
;; Something small but greater than keyboard autorepeat rate
(customize-set-variable 'show-paren-delay 0.05)

;; Backups
;; http://www.emacswiki.org/emacs/BackupDirectory
;; http://www.chemie.fu-berlin.de/chemnet/use/info/elisp/elisp_24.html
(setq backup-by-copying t
      backup-directory-alist
      `(("." . ,(concat temporary-file-directory "emacs_backups")))
      version-control t
      kept-new-versions 6
      kept-old-versions 2
      delete-old-versions t
      trim-versions-without-asking t
      auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
