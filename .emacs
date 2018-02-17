;; remove splash screen
(setq inhibit-startup-screen t)
;; remove menu bar
(menu-bar-mode 0)
;; remove tool bar
(tool-bar-mode 0)
;; enable ido
(ido-mode 1)
(package-initialize)
;; use elpy for python
(elpy-enable)
;; use ubuntu font
(set-default-font "Ubuntu Mono-14")
;; enable line numbers
(global-linum-mode)
;; enable evil
(evil-mode 1)
