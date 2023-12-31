;;;;;;;; Packages ;;;;;;;;
;; See package-list-packages
(add-to-list
 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-archive-priorities
      '(("gnu" . 30) ("nongnu" . 20) ("melpa" . 10)))
;; See package-install-selected-packages
;; See package-autoremove
(setq package-selected-packages
      '(elisp-autofmt langtool org-superstar markdown-mode))
