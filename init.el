(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load "~/.emacs.d/init_settings.el")
(load "~/.emacs.d/init_load_packages.el")
(load "~/.emacs.d/init_functions.el")
(load "~/.emacs.d/init_keybindings.el")

(load "~/.emacs.d/init_system.el")

;; Ignore silly "buffer still has clients" prompt when acting as server
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
