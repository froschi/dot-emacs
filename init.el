;;; Hurra, emacs!

;; First of all, aesthetics.
; I do not want that annoying splash screen.
(setq inhibit-splash-screen t)
; Restart with previous files.
(desktop-save-mode 1)
; My default font for the console.
(set-frame-font "Mensch-11")
; Theme
(load-theme 'deeper-blue)
; GUI tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)
; Line wrapping
(global-visual-line-mode)
; Line numbers
(global-linum-mode 1)
(setq linum-format "%4d")

;; Packages
(require 'package)
; Packages sources
(add-to-list 'package-archives
  '("marmelade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
; Initialize
(package-initialize)

; Package: magit
; Source: http://magit.github.io/magit/
; Cheatsheet: http://daemianmack.com/magit-cheatsheet.html
(require 'magit)
(setq magit-commit-signoff 1)

; Package: yanisppet
; Source: https://github.com/capitaomorte/yasnippet
; Introduction video: http://www.youtube.com/watch?v=ZCGmZK4V7Sg
(require 'yasnippet)
(yas-global-mode 1)

; Package: projectile
; Source: https://github.com/bbatsov/projectile
(require 'projectile)
(projectile-global-mode)
