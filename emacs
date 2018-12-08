
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(package-selected-packages (quote (neotree ## sml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setenv "PATH" (concat "/usr/local/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj/bin"  exec-path))

;; My personal preferences

;; tab width
(setq python-indent-level 2)
(setq-default tab-width 4)

;; Evil Mode Integration
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; Neotree
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'load-path "~/.emacs.d/emacs-neotree/neotree.el")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Change color of cursor based on evil-mode
;; TODO: Figure this cursor shit out 

;; vim style keybindings
;; (define-key evil-insert-state-map [caps lock] [escape])

;; Smart Parens
(add-to-list 'load-path "~/.emacs.d/smartparens")
(require 'smartparens)
(smartparens-global-mode 1)
(show-smartparens-mode 1)
(show-paren-mode 1)
(setq show-paren-style 'expression)
(global-display-line-numbers-mode 1)

;; Autopair
;;(add-to-list 'load-path "~/.emacs.d/autopair")
;;(require 'autopair)
;;(autopair-global-mode)

;; Always have matching paren showing
;;(show-smartparen-mode 1)

;; TODO: Complete save on exit insert functionality 
;; Autosave when leaving insert mode
;;(defun my-save()
  ;;(if (buffer-file-name)
      ;;(evil-save))
;;
;;
  ;;(add-hook 'evil-insert-state-exit-hook 'my-save)
  ;;)
