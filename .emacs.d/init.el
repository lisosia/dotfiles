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
(global-set-key "\C-x\C-b" 'buffer-menu);buffer-listを開く時に、windowを分割しない

;; Coding system.
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Key
(global-set-key "\C-z" 'undo)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; package <anzu>
(global-anzu-mode +1)
