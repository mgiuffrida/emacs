;windows only
(if (eq system-type 'windows-nt)
    (progn
      (set-face-attribute 'default nil :font "Consolas")
      (setq default-directory "D:/dev/")))

;ubuntu only
(if (eq system-type 'gnu)
    (progn
      (set-face-attribute 'default nil :family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)
      ff-search-directories (quote ("." "~/dev/c/src"))))
