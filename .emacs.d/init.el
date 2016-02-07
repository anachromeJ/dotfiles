;; -*- mode: emacs-lisp -*-

;; ---------------------
;; -- Global Settings --
;; ---------------------
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(require 'cl)
(require 'ido)
;; (require 'flx-ido)
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
;; (ido-everywhere 1)
;; (flx-ido-mode 1)
(menu-bar-mode -1)
(normal-erase-is-backspace-mode 0)
(show-paren-mode t)
(global-linum-mode t)
(column-number-mode t)
(blink-cursor-mode 0)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq column-number-mode t)
(setq inhibit-startup-message t)
(setq save-abbrevs nil)
(setq show-trailing-whitespace t)
(setq suggest-key-bindings t)
(setq vc-follow-symlinks t)
(setq initial-scratch-message "")
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq visible-bell nil)
(scroll-bar-mode 0)
(tool-bar-mode 0)

;; -- Font --
(set-default-font "Inconsolata-18")

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

;; -- Haskell mode indentation --
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#fdf6e3" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(ansi-term-color-vector [unspecified "#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"])
 '(custom-enabled-themes (quote (adwaita)))
 '(custom-safe-themes (quote ("3ac266781ee0ac3aa74a6913a1506924cad669f111564507249f0ffa7c5e4b53" "3b24f986084001ae46aa29ca791d2bc7f005c5c939646d2b800143526ab4d323" "3a3917dbcc6571ef3942c2bf4c4240f70b5c4bc0b28192be6d3f9acd83607a24" "b6db49cec08652adf1ff2341ce32c7303be313b0de38c621676122f255ee46db" "e24679edfdea016519c0e2d4a5e57157a11f928b7ef4361d00c23a7fe54b8e01" "e033c4abd259afac2475abd9545f2099a567eb0e5ec4d1ed13567a77c1919f8f" "e8bba3c8e8caea2c7a8b6932b0db8d9bdb468c9b44bf554f37b56093d23fde57" "5424f18165ed7fd9c3ec8ea43d801dc9c71ab9da2b044000162a47c102ef09ea" "f2503f0a035c2122984e90eb184185769ee665de5864edc19b339856942d2d2d" "232f715279fc131ed4facf6a517b84d23dca145fcc0e09c5e0f90eb534e1680f" "3f873e7cb090efbdceafb8f54afed391899172dd917bb7a354737a8bb048bd71" "1b4243872807cfad4804d7781c51d051dfcc143b244da56827071a9c2e10ab7f" "3fb38c0c32f0b8ea93170be4d33631c607c60c709a546cb6199659e6308aedf7" "90b1aeef48eb5498b58f7085a54b5d2c9efef2bb98d71d85e77427ce37aec223" "b2028956188cf668e27a130c027e7f240c24c705c1517108b98a9645644711d9" "c55d8474e898e1231c49547d50e15d05c387e4111f4085f5fb7120a7418165c2" "8ffaf449297bd9a08517f4b03a4df9dbf3e347652746cefceb3ee57c8e584b9f" "744c95ef0117ca34c5d4261cb00aff6750fd60338240c28501adb5701621e076" "ee3b22b48b269b83aa385b3915d88a9bf4f18e82bb52e20211c7574381a4029a" "75c0b9f9f90d95ac03f8647c75a91ec68437c12ff598e2abb22418cd4b255af0" "7e346cf2cb6a8324930c9f07ce050e9b7dfae5a315cd8ed3af6bcc94343f8402" "01c5ebefcabc983c907ee30e429225337d0b4556cc1d21df0330d337275facbb" "b83c1e19c912f0d84a543b37367242f8a3ad2ed3aec80f5363d0d82ba4621e7d" "5cc9df26a180d14a6c5fc47df24d05305636c80030a85cf65e31f420d7836688" "e8586a76a96fd322ccb644ca0c3a1e4f4ca071ccfdb0f19bef90c4040d5d3841" "e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" "14fc90b23d8eb37a16911992216e4ecf51209adb664be1b43d7ea87416a5dc45" "d50ab16e07f2a4b2bb16e12cd27d4c6a7a79396631c50f6fc46c0d5899acd81d" "74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" "bc2846e7b3fe884da451356d94e37e56441e4b19ea058b73faa8a055f55a028b" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(fci-rule-color "#eee8d5")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-tail-colors (quote (("#eee8d5" . 0) ("#B4C342" . 20) ("#69CABF" . 30) ("#69B7F0" . 50) ("#DEB542" . 60) ("#F2804F" . 70) ("#F771AC" . 85) ("#eee8d5" . 100))))
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(vc-annotate-background "#586e75")
 '(vc-annotate-color-map (quote ((20 . "#990A1B") (40 . "#FF6E64") (60 . "#cb4b16") (80 . "#7B6000") (100 . "#b58900") (120 . "#DEB542") (140 . "#546E00") (160 . "#859900") (180 . "#B4C342") (200 . "#3F4D91") (220 . "#6c71c4") (240 . "#9EA0E5") (260 . "#2aa198") (280 . "#69CABF") (300 . "#00629D") (320 . "#268bd2") (340 . "#69B7F0") (360 . "#d33682"))))
 '(vc-annotate-very-old-color "#93115C"))

;; -----------
;; -- Melpa --
;; -----------
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
;;			   '("marmalade" . "http://marmalade-repo.org/packages/")
			   '("melpa" . "http://melpa.org/packages/") t))
(when (< emacs-major-version 24)  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; -- Projectile-Helm --
;; NOTE: the command is C-c p h
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;; -------------------
;; -- Auto-Complete --
;; -------------------
(defun auto-complete-mode-maybe ()
  "No maybe for you. Only AC!"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))
(global-auto-complete-mode t)

;; -- Cscope --
(require 'xcscope)
(cscope-setup)

;; -- Helm --
(package-initialize)
(add-to-list 'load-path (file-name-directory (file-truename "./emacs-helm.sh")))
(setq default-frame-alist '((vertical-scroll-bars . nil)
                            (tool-bar-lines . 0)
                            (menu-bar-lines . 0)
                            (fullscreen . nil)))
(blink-cursor-mode -1)
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(global-set-key (kbd "M-x") 'helm-M-x)
(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
(add-hook 'kill-emacs-hook #'(lambda () (and (file-exists-p "/tmp/helm-cfg.el") (delete-file "/tmp/helm-cfg.el"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -- Initial Directory --
(cd "~/Dropbox")
