;; Switch to ergo Dvorak layout
(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "dv")
(require 'ergoemacs-mode)
(ergoemacs-mode 1)

;; web-mode
(autoload 'web-mode "~/.emacs.d/web-mode/web-mode"
  nil t)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 4)
  (setq web-mode-style-padding 2)
  (setq web-mode-script-padding 2)
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#444")
  (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#444"))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; google-c-style
(load "~/.emacs.d/google-c-style")
(add-hook 'c-mode-common-hook 'google-set-c-style)
;; Make RETURN key go to the next line and space over to the right place
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; js2-mode
(autoload 'js2-mode "~/.emacs.d/js2-mode/js2-mode"
  nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; markdown-mode
(autoload 'markdown-mode "~/.emacs.d/markdown-mode/markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; go-mode
(add-to-list 'load-path "~/.emacs.d/go-mode.el")
(require 'go-mode-autoloads)
