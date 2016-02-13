;; Use emacsclient
(server-start)
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;; Switch to ergo Dvorak layout
(setq frame-title-format
      '((buffer-name "%f" ("%b")) " :: emacs"))
(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "dv") ; US Dvorak layout
;; load ErgoEmacs keybinding
(load "~/.emacs.d/ergoemacs-mode/ergoemacs-mode")
;; turn on minor mode ergoemacs-mode
(ergoemacs-mode 1)

(load "~/.emacs.d/web-mode/web-mode")
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" , temporary-file-directory t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode t)
 '(ff-search-directories (quote ("." "~/dev/c/src")))
 '(fill-column 80)
 '(inhibit-startup-screen t)
 '(org-CUA-compatible nil)
 '(org-replace-disputed-keys nil)
 '(recentf-mode t)
 '(shift-select-mode nil))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))

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
(global-set-key (kbd "M-g") 'backward-word)

;(setq c-default-style "stroustrup"); c-basic-offset 4)
;(setq-default indent-tabs-mode nil)
;;(setq tab-width 4)
;(setq c-indent-level 4)


;; MS indent:
;(setq c-basic-offset 4)
;(defvaralias 'c-basic-offset 'tab-width)
;(setq js-indent-level 2)





(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.text" . markdown-mode) auto-mode-alist))

;(setq default-directory "D:/Dropbox/epistle/" )






;(set-face-attribute 'default nil :font "Consolas")

;; JS

;(load "~/.emacs.d/js2.elc")

;(autoload 'js2-mode "js2" nil t)
;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;(setq-default indent-tabs-mode nil)

;(setq js2-mode-escape-quotes nil)



(load "~/.emacs.d/google-c-style")


;(setq frame-title-format
;      '("emacs: %f "));


;Figure out what these are and if I want them:

;(setq backup-directory-alist
;      `((".*" . ,temporary-file-directory)))
;(setq auto-save-file-name-transforms
;      `((".*" ,temporary-file-directory t)))



;(add-hook 'js2-mode-hook '(lambda()
;  (local-set-key (kbd "RET") 'newline-and-indent) ; auto indent
;  (local-set-key (kbd "M-RET") 'newline)
;  (setq c-auto-newline 1)
;  (setq tab-width 4)
;  (setq indent-tabs-mode nil)
;  ;  (setq c-offsets-alist '((brace-list-open . -1)))
;  (setq c-hanging-braces-alist '((brace-list-open . '())
;   (brace-entry-open)
;   (substatement-open after)
;   (block-close . c-snug-do-while)
;   (extern-lang-open after)
;   (inexpr-class-open after)
;   (brace-list-close)
;  (inexpr-class-close before))
; )
;  (setq c-cleanup-list '(brace-catch-brace brace-else-brace brace-elseif-brace))
;
;(setq show-trailing-whitespace t)
;))




;(add-hook 'c-mode-hook '(lambda ()
;  (setq c-basic-offset 2)
;  (setq tab-width 4)
;  (setq indent-tabs-mode nil)
;  (setq c-auto-newline 1)
;;  (setq c-offsets-alist '((brace-list-open . -1)))
;  (setq c-hanging-braces-alist '((brace-list-open . '())
;   (brace-entry-open)
;   (substatement-open after)
;   (block-close . c-snug-do-while)
;   (extern-lang-open after)
;   (inexpr-class-open after)
;   (brace-list-close)
;  (inexpr-class-close before))
;)
;  (setq c-cleanup-list '(brace-catch-brace brace-else-brace brace-elseif-brace))
;
;  (turn-on-auto-fill)
;  (setq comment-column 40)
;;  (setq c-default-style "k&r")
;))



;(defun my-c++-indent-setup ()
;  (setq c-default-style "stroustrup")
;  (setq c-basic-offset 2)
;  (setq tab-width 2)
;  (setq c-auto-newline 1)
;  (setq indent-tabs-mode nil)
;;  (setq indent-tabs-mode 1)
;;  (c-set-style "stroustrup")
;  (setq c-hanging-braces-alist '((brace-list-open . '())
;   (brace-entry-open)
;;   (substatement-open after)
;   (block-close . c-snug-do-while)
;   (extern-lang-open after)
;   (inexpr-class-open after)
;   (brace-list-close)
;   (substatement-open after)
;   (class-open after)
;   (inline-open after)
;   (defun-open after)
;  (inexpr-class-close before))
;)
;)
;(add-hook 'c++-mode-hook 'my-c++-indent-setup)



    (add-hook 'c-mode-common-hook 'google-set-c-style)
;;
;; If you want the RETURN key to go to the next line and space over
;; to the right place, add this to your .emacs right after the load-file:
;;
    (add-hook 'c-mode-common-hook 'google-make-newline-indent)

(setq-default indent-tabs-mode nil)

(setq css-indent-offset 2)
(set-keyboard-coding-system nil)



(defun my-increment-number-decimal (&optional arg)
  "Increment the number forward from point by 'arg'."
  (interactive "p*")
  (save-excursion
    (save-match-data
      (let (inc-by field-width answer)
        (setq inc-by (if arg arg 1))
        (skip-chars-backward "0123456789")
        (when (re-search-forward "[0-9]+" nil t)
          (setq field-width (- (match-end 0) (match-beginning 0)))
          (setq answer (+ (string-to-number (match-string 0) 10) inc-by))
          (when (< answer 0)
            (setq answer (+ (expt 10 field-width) answer)))
          (replace-match (format (concat "%0" (int-to-string field-width) "d")
                                 answer)))))))

    (global-set-key (kbd "C-=") 'my-increment-number-decimal)
(defun my-decrement-number-decimal (&optional arg)
  (interactive "p*")
  (my-increment-number-decimal (if arg (- arg) -1)))

    (global-set-key (kbd "C--") 'my-decrement-number-decimal)

(global-set-key (kbd "C-_") 'text-scale-decrease)
(global-set-key (kbd "C-+") 'text-scale-increase)

(defun my-random-sort-lines (beg end)
  "Sort lines in region randomly."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (let ;; To make `end-of-line' and etc. to ignore fields.
          ((inhibit-field-text-motion t))
        (sort-subr nil 'forward-line 'end-of-line nil nil
                   (lambda (s1 s2) (eq (random 2) 0)))))))
(put 'upcase-region 'disabled nil)


;; web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 4)
  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#444")
  (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#444")
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

(add-to-list 'load-path "~/.emacs.d/go-mode.el")
(require 'go-mode-autoloads)
(require 'google)
