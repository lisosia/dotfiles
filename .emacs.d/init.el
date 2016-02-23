(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Additional loadpath
(add-to-list 'load-path "~/.emacs.d/user_elisp/")

;; Misc
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-message t)
(tool-bar-mode 0)
(electric-pair-mode 1)
(show-paren-mode t)
(delete-selection-mode 1)
(blink-cursor-mode 0)
(setq x-select-enable-clipboard t)
(global-set-key "\C-x\C-b" 'buffer-menu);buffer-listを開く時に、windowを分割しない

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Key
(global-set-key "\C-z" 'undo)

;; package auto-complete
(require 'auto-complete)
(require 'go-autocomplete)
(require 'auto-complete-config)
(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")

;; package <anzu>
(global-anzu-mode +1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;auto-inserted;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
