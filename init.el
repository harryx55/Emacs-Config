(message "loading init file...")
(unless (>= emacs-major-version 24)
  (error "Requires GNU Emacs 24 or later"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/packages")
(add-to-list 'load-path "~/.emacs.d/elpa")

;; warn user when opening files larger then 10MBs
(setq large-file-warning-threshold 10000000)

;; disable bell ring
(setq ring-bell-function 'ignore)

;; disable menu
(menu-bar-mode -1)

;; disable scroll bar
(toggle-scroll-bar -1)

;; disable tool bar
(tool-bar-mode -1)




