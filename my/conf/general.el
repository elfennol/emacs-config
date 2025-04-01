;;;;;;;; General ;;;;;;;;
;; https://www.emacswiki.org/emacs/LanguageEnvironment
(set-language-environment (eval my-language-environment))
;; https://www.emacswiki.org/emacs/SetFonts
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Backquote.html
(add-to-list 'default-frame-alist `(font . ,my-font))
;; https://www.emacswiki.org/emacs/ToolBar
(tool-bar-mode -1)
;; https://www.emacswiki.org/emacs/ScrollBar
(scroll-bar-mode -1)
;; https://www.emacswiki.org/emacs/MenuBar
(menu-bar-mode -1)
;; Turn off alarm bell
;; https://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)
;; Theme
(load-theme my-theme)
;; https://www.emacswiki.org/emacs/LineNumbers
(global-display-line-numbers-mode)
;; Delete trailing whitespace when the file is saved.
;; https://stackoverflow.com/a/7747259
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; Disable backup files
;; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
(setq make-backup-files nil)
;; Backup files directory (not secure for sensitive data)
;(setq backup-directory-alist `(("." . ,my-backup-directory)))
;; Disable lock file
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html
(setq create-lockfiles nil)
;; Auto save files directory (not secure for sensitive data)
;;(setq auto-save-file-name-transforms `((".*" ,my-auto-save-file-directory)))
;; Disable auto save
;; http://xahlee.info/emacs/emacs/emacs_auto-save_backup.html
(setq auto-save-default nil)
;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Displaying-the-current-line-or-column.html
(setq column-number-mode t)
;; https://www.emacswiki.org/emacs/VisualLineMode
(global-visual-line-mode 1)
;; https://www.emacswiki.org/emacs/BrowseUrl
(setq
 browse-url-browser-function 'browse-url-generic
 browse-url-generic-program (eval my-web-browser))
;; https://www.emacswiki.org/emacs/RecentFiles
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
