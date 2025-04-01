;; https://www.emacswiki.org/emacs/InstallingPackages

;; Load packages
(load (concat user-emacs-directory "packages.el"))

;; Load parameters
(load (concat user-emacs-directory "parameters.el"))

;; Load conf
(load (concat my-conf-directory "general.el"))
(load (concat my-conf-directory "calendar.el"))
(load (concat my-conf-directory "orgmode.el"))
(load (concat my-conf-directory "orgroam.el"))
(load (concat my-conf-directory "superstar.el"))
(load (concat my-conf-directory "langtool.el"))

;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(setq custom-file (concat user-emacs-directory "custom.el"))
(if (not (file-exists-p custom-file))
    (make-empty-file custom-file))
(load custom-file)
