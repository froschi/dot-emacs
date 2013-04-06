;;; Hurra, emacs!

;; First of all, aesthetics.
; I do not want that annoying splash screen.
(setq inhibit-splash-screen t)
; My default font for the console.
(set-frame-font "Mensch-11")
; Theme
(load-theme 'deeper-blue)
; GUI tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Packages
(require 'package)
; Packages sources
(add-to-list 'package-archives
  '("marmelade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
; Initialize
(package-initialize)
; Package: yanisppet
; Source: https://github.com/capitaomorte/yasnippet
; Introduction video: http://www.youtube.com/watch?v=ZCGmZK4V7Sg
(require 'yasnippet)
(yas-global-mode 1)
