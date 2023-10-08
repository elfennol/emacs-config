;;;;;;;; Org mode ;;;;;;;;
;; Global keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
;; Fontify code in code blocks
;; https://orgmode.org/worg/org-contrib/babel/examples/fontify-src-code-blocks.html
(setq org-src-fontify-natively t)
;; Display images
;; https://orgmode.org/manual/Images.html
(setq org-startup-with-inline-images t)
;; Agenda file
;; https://stackoverflow.com/questions/11384516/how-to-make-all-org-files-under-a-folder-added-in-agenda-list-automatically
(setq org-agenda-files (directory-files-recursively my-org-files "org$" nil nil t))
;; "TODO" keywords
;; https://orgmode.org/manual/Workflow-states.html
(setq org-todo-keywords
      '((sequence "BASKET(b)" "TODO(t)" "IN_PROGRESS(p)" "WAITING(w)" "HABIT(h)" "|" "DONE(d)" "CANCEL(c)")))
;; PDF open with
;; https://stackoverflow.com/questions/8834633/how-do-i-make-org-mode-open-pdf-files-in-evince/8836108#8836108
(add-hook 'org-mode-hook
	  '(lambda ()
	     (delete '("\\.pdf\\'" . default) org-file-apps)
	     (add-to-list 'org-file-apps `("\\.pdf\\'" . ,my-pdf-viewer-cmd))))
