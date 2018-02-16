;; remove screen plash
(setq inhibit-startup-screen t)
;; remove menu bar
(menu-bar-mode 0)
;; remove tool bar
(tool-bar-mode 0)
;; enable ido
(ido-mode 1)
(package-initialize)
(elpy-enable)
(set-default-font "Ubuntu Mono-14")
(global-linum-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b97a01622103266c1a26a032567e02d920b2c697ff69d40b7d9956821ab666cc" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
