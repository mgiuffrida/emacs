;; Custom keybindings
(global-set-key [f9] 'bookmark-jump)
(global-set-key [f10] 'bookmark-set)
(global-set-key (kbd "M-w") 'kill-whole-line)
(global-set-key (kbd "C-k") 'kill-line)
(global-set-key (kbd "C-SPC") 'set-mark-command)
(global-set-key (kbd "C-@") 'set-mark-command)
(global-set-key (kbd "M-z") 'undo)
(global-set-key "\M-m" 'goto-line)
(global-set-key "\M-l" 'recenter-top-bottom)
;;(ergoemacs-replace-key 'ergoemacs-forward-close-bracket nil)
;;(ergoemacs-replace-key 'ergoemacs-backward-open-bracket nil)
(global-set-key "\M-H" 'beginning-of-buffer)
(global-set-key "\M-N" 'end-of-buffer)
(global-set-key (kbd "C-c f") 'ff-find-other-file)
;; C-x o -> M-o
(global-set-key (kbd "M-o") 'other-window)

;; somekind of ergoemacs-dvorak bug
;; seems fixed maybe?
;(global-set-key (kbd "M-g") 'backward-word)
