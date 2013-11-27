;; -*- mode: emacs-lisp -*-
;; Simple .emacs configuration

;; ---------------------
;; -- Global Settings --
;; ---------------------
(add-to-list 'load-path "~/.emacs.d")
(require 'cl)
(require 'ido)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)
(require 'recentf)
(require 'linum)
(require 'smooth-scrolling)
(require 'whitespace)
(require 'dired-x)
(require 'compile)
(ido-mode t)
(menu-bar-mode -1)
(normal-erase-is-backspace-mode 0)
(show-paren-mode t)
(global-linum-mode t)
(column-number-mode t)
(setq-default cursor-type 'bar)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq save-abbrevs nil)
(setq show-trailing-whitespace t)
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit autoface-default :strike-through nil :underline nil :slant normal :weight normal :height 120 :width normal :family "monaco"))))
;;  '(column-marker-1 ((t (:background "red"))))
;;  '(diff-added ((t (:foreground "cyan"))))
;;  '(flymake-errline ((((class color) (background light)) (:background "Red"))))
;;  '(font-lock-comment-face ((((class color) (min-colors 8) (background light)) (:foreground "red"))))
;;  '(fundamental-mode-default ((t (:inherit default))))
;;  '(highlight ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
;;  '(isearch ((((class color) (min-colors 8)) (:background "yellow" :foreground "black"))))
;;  '(linum ((t (:foreground "black" :weight bold))))
;;  '(region ((((class color) (min-colors 8)) (:background "white" :foreground "magenta"))))
;;  '(secondary-selection ((((class color) (min-colors 8)) (:background "gray" :foreground "cyan"))))
;;  '(show-paren-match ((((class color) (background light)) (:background "black"))))
;;  '(vertical-border ((t nil)))
)

;; ------------
;; -- Macros --
;; ------------

(global-unset-key "\C-z")
(global-unset-key "\C-x\C-c")

(load "defuns-config.el")
(fset 'align-equals "\C-[xalign-regex\C-m=\C-m")
(global-set-key "\M-=" 'align-equals)
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c;" 'comment-or-uncomment-region)
(global-set-key "\M-n" 'next5)
(global-set-key "\M-p" 'prev5)
(global-set-key "\M-o" 'other-window)
(global-set-key "\M-i" 'back-window)
(global-set-key "\C-z" 'zap-to-char)
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-d" 'delete-word)
(global-set-key "\M-h" 'backward-delete-word)
(global-set-key "\M-u" 'zap-to-char)

;; bind control-x-r to revert buffer without confirmation
(defun revert-buffer-no-confirm ()
  (interactive) (revert-buffer t t))
(global-set-key "\C-x\C-r" 'revert-buffer-no-confirm)

;; ---------------
;; -- Marmalade --
;; ---------------
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


;; -------------
;; -- JS Mode --
;; -------------
(load "js-config.el")
(add-to-list 'load-path "~/.emacs.d/jade-mode") ;; github.com/brianc/jade-mode
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; -------------------
;; -- Markdown Mode --
;; -------------------
(add-to-list 'load-path "~/.emacs.d/markdown-mode") ;; http://jblevins.org/git/markdown-mode.git
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


;; --------------
;; -- Web Mode --
;; --------------
(add-to-list 'load-path "~/.emacs.d/web-mode")
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
