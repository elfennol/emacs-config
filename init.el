;; https://www.emacswiki.org/emacs/InstallingPackages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; https://github.com/mhayashi1120/Emacs-langtool
(setq langtool-java-classpath
      "/usr/share/languagetool:/usr/share/java/languagetool/*")
(require 'langtool)

;; https://github.com/integral-dw/org-superstar-mode
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; Load parameters
(load (concat user-emacs-directory "parameters.el"))

;; Load conf
(load (concat my-conf-directory "general.el"))
(load (concat my-conf-directory "calendar.el"))
(load (concat my-conf-directory "orgmode.el"))

;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(setq custom-file (concat user-emacs-directory "custom.el"))
(if (not (file-exists-p custom-file))
    (make-empty-file custom-file)
)
(load custom-file)
