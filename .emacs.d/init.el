;;; el-get auto-install
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; install lists
(el-get-bundle anzu)
(el-get-bundle auto-complete)
(el-get-bundle markdown-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
(global-linum-mode t)
; (setq-default show-trailing-whitespace t) ;行末の空白を強調
(global-set-key "\C-x\C-b" 'buffer-menu);buffer-listを開く時に、windowを分割しない

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Key
(global-set-key "\C-z" 'undo)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; Theme
(load-theme 'dichromacy t)

;; mode
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

;; auto-insert-mode (build-in)
(auto-insert-mode)
(setq auto-insert-directory "~/.emacs.d/autoinsert/")
(define-auto-insert "\\.rb$" "_.rb")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; package <anzu>
(global-anzu-mode +1)
(global-set-key (kbd "C-c r") 'anzu-query-replace)
(global-set-key (kbd "C-c R") 'anzu-query-replace-regexp)

;; package <makrdown-mode>
; apt-get install node-marked
(setq markdown-command "/usr/bin/marked --gfm")
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))

;; package <auto-complete>
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;; package flycheck
; http://www.flycheck.org/en/latest/_downloads/flycheck.html#Ruby
; (el-get-bundle flycheck)
; (add-hook 'after-init-hook #'global-flycheck-mode)
