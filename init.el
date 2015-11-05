;;; Hurra, emacs!

;; First of all, PATH.
(setq exec-path (append '("/home/thorsten/local/bin") exec-path))
;; Next, aesthetics.
; I do not want that annoying splash screen.
(setq inhibit-splash-screen t)
; Restart with previous files.
(desktop-save-mode 1)
; My default font for the console.
(set-frame-font "Anonymous Pro-12")
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
; Tabs should not be tabs and only two chars wide
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Packages
(require 'package)
; Packages sources
(add-to-list 'package-archives
  '("marmelade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
  '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
; Initialize
(package-initialize)

;(global-rainbow-delimiters-mode)

;; Recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 125)

;; org-mode
; Make some key combinations available globally.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
; File relevant for the agenda
(setq org-agenda-files
  (list "~/scm/org/agenda/zalando.org" "~/scm/org/agenda/private.org"))
; Set timestamp and note on todo completion.
(setq org-log-done 'note)

; Package: auto-complete
(require 'auto-complete-config)
(ac-config-default)

; Package: magit
; Source: http://magit.github.io/magit/
; Cheatsheet: http://daemianmack.com/magit-cheatsheet.html
(require 'magit)
(setq magit-commit-signoff 1)

; Package: flx-ido
; Source: https://github.com/lewang/flx
; Purpose: Fuzzy matching for Emacs ... a la Sublime Text.
; Comment: Recommended prerequisite for projectile.
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-use-faces nil)

; Package: projectile
; Source: https://github.com/bbatsov/projectile
(require 'projectile)
(projectile-global-mode)

; For Vagrant, treat Vagrantfile as Ruby
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8eef22cd6c122530722104b7c82bc8cdbb690a4ccdd95c5ceec4f3efa5d654f5" default)))
 '(org-agenda-files (quote ("~/scm/org/agenda/zalando.org")) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; JavaScript
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Clojure
;(require 'cider)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
