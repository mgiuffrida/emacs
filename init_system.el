;; Windows only
(if (eq system-type 'windows-nt)
    (progn
      (set-face-attribute 'default nil :font "Consolas")
      (setq default-directory "~/")))

;; Goobuntu only
(if (string= (getenv "THIS_ENV") "google")
    (progn
      (set-face-attribute 'default nil :family "DejaVu Sans Mono" :foundry "unknown" :slant 'normal :weight 'normal :height 98 :width 'normal)
      ff-search-directories (quote ("." "~/dev/c/src"))
      (require 'google)
      (load "server")
      (unless (server-running-p) (server-start))))

;; OS X only
(if (eq system-type 'darwin)
    (progn
      (load "server")
      (unless (server-running-p) (server-start))))
