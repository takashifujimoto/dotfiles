(require 'package)
  (add-to-list 'package-archives '("gnu" .          "https://elpa.gnu.org/packages/"))
  (add-to-list 'package-archives '("melpa" .        "https://melpa.org/packages/"))
  (add-to-list 'package-archives '("marmalade" .    "https://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-set-key (kbd "C-s-h") 'help)
(global-set-key (kbd "C-h") 'delete-backward-char)

(setq history-delete-duplicates t)
(setq inhibit-splash-screen t)


;; skk japanese
(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-auto-fill-mode)
  (setq default-input-method "japanese-skk")
  (require 'skk-study))
   
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ddskk))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
