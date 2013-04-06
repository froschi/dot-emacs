;; Hurra, emacs!

; First of all, aesthetics.
; I do not want that annoying splash screen.
(setq inhibit-splash-screen t)
; My default font for the console.
(set-frame-font "Mensch-11")
; Theme
(load-theme 'deeper-blue)
; GUI tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)

; Package sources
(require 'package)
(add-to-list 'package-archives
  '("marmelade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
