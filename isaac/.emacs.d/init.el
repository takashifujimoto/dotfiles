(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/package/"))
(package-initialize)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-set-key (kbd "C-s-h") 'help)
(global-set-key (kbd "C-h") 'delete-backward-char)

(setq history-delete-duplicates t)
(setq inhibit-splash-screen t)