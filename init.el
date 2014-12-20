;; ergoemacs-mode adds a bunch of useful crap
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq frame-title-format
      '((buffer-name "%f" ("%b")) " :: emacs"))

;; Switch to ergo Dvorak layout
(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "dv")
(require 'ergoemacs-mode)
(ergoemacs-mode 1)

;; Settings
(setq fill-column 80
      inhibit-startup-screen t)

(load "~/.emacs.d/init_keybindings.el")
(load "~/.emacs.d/init_load_packages.el")
(load "~/.emacs.d/init_functions.el")

;; Backups
;; http://www.emacswiki.org/emacs/BackupDirectory
;; http://www.chemie.fu-berlin.de/chemnet/use/info/elisp/elisp_24.html
(setq
 backup-by-copying t
 backup-directory-alist
 `(("." . ,(concatenate 'string temporary-file-directory "emacs_backups")))
 version-control t
 kept-new-versions 6
 kept-old-versions 2
 delete-old-versions t
 trim-versions-without-asking t
 auto-save-file-name-transforms
 `((".*" ,temporary-file-directory t))
)

(setq-default indent-tabs-mode nil)
(set-keyboard-coding-system nil)

;don't warn
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(load "~/.emacs.d/init_system.el")
