;; Place this file in C:\Users\Username\AppData\Roaming and point to the appropriate files
;;(setq default-directory "C:/Users/tfujim")
;;(setenv "HOME" "C:/Users/tfujim")


;; 日本語環境設定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-default 'buffer-file-coding-system 'utf-8)


;;;;;;;;;; ;;;;;;;;;; MELPA package manager ;;;;;;;;;; ;;;;;;;;;; 
(require 'package)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;;;;;;;;; ;;;;;;;;;; Plugins               ;;;;;;;;;; ;;;;;;;;;; 
;;(require 'powerline)
;;(powerline-default-theme)


;;DDSKK
;;https://github.com/skk-dev/ddskk/blob/master/READMEs/INSTALL.MELPA.md

;;(require 'skk-autoloads)
;;(global-set-key (kbd "C-x C-j") 'skk-mode) ; C-x C-j で skk モードを起動
;;(setq skk-byte-compile-init-file t) ; .skk を自動的にバイトコンパイル

;;;;;;;;;;;;;;;;;;;;  Plugins END          ;;;;;;;;;;;;;;;;;;;;;


;; disable C-x C-c for accidental quit.
(global-unset-key (kbd "C-x C-c"))

;; c-h becomes back space
;; c-s-h for help
(global-set-key (kbd "C-S-h") 'help)
(global-set-key (kbd "C-h") 'delete-backward-char)


;; startup directory  (don't forget to escape slash)
;;(setq default-directory "C:/Users/tfujim")
;;(cd "C/Users/tfujim")
;;(setq default-directory "\\\\ds.ad.ssmhc.com\\ssmdfs\\IC\\UserHome\\tfujim\\My Documents\\_notes")
;; NO BEEP SOUND 
(setq visible-bell nil
      ring-bell-function 'double-flash-mode-line)
(defun double-flash-mode-line ()
  (let ((flash-sec (/ 1.0 20)))
    (invert-face 'mode-line)
    (run-with-timer flash-sec nil #'invert-face 'mode-line)
    (run-with-timer (* 2 flash-sec) nil #'invert-face 'mode-line)
    (run-with-timer (* 3 flash-sec) nil #'invert-face 'mode-line)))
;; reference https://www.emacswiki.org/emacs/AlarmBell

;;  hide the ugly moo cow
(setq inhibit-splash-screen t)


;;; 右から左に読む言語に対応させないことで描画高速化
(setq-default bidi-display-reordering nil)
;;; メニューバーとツールバーとスクロールバーを消す
;;;(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "01e067188b0b53325fc0a1c6e06643d7e52bc16b6653de2926a480861ad5aa78" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "c616e584f7268aa3b63d08045a912b50863a34e7ea83e35fcab8537b75741956" "099c44618d7660548701d4f495a8c23a85103bc7b87fec33c9db4cd099a4adaf" default)))
 '(package-selected-packages
   (quote
    (ddskk airline-themes powerline zen-and-art-theme white-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; resource
;; http://emacs.rubikitch.com/sd1407/

;; Org mode settings
;; file location
(setq org-directory "~/Org")
(setq org-default-notes-file "notes.org")
