(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; keep the installed packages in .emacs.d
(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(package-initialize)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; disable menu
(menu-bar-mode -1)

;; disable scroll bar
(toggle-scroll-bar -1)

;; disable tool bar
(tool-bar-mode -1)

;; auto saving every 8 key strokes
(setq auto-save-interval 8)

;; change backup folder
(setq backup-directory-alist `(("." . "~/.saves")))

;;;; C AND C++    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

