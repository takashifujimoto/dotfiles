(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/package/"))
(package-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-set-key (kbd "C-s-h") 'help)
(global-set-key (kbd "C-h") 'delete-backward-char)

(setq history-delete-duplicates t)
(setq inhibit-splash-screen t)


(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode) ;;良い感じに改行を自動入力してくれる機能
  (setq default-input-method "japanese-skk")         ;;emacs上での日本語入力にskkをつかう
    (require 'skk-study))    