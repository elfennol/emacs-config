;;;;;;;; Org mode ;;;;;;;;
;; Global keys
;; https://orgmode.org/manual/Activation.html
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
;; Fontify code in code blocks
;; https://orgmode.org/worg/org-contrib/babel/examples/fontify-src-code-blocks.html
(setq org-src-fontify-natively t)
;; Display images
;; https://orgmode.org/manual/Images.html
(setq org-startup-with-inline-images t)
;; Agenda file
;; https://stackoverflow.com/questions/11384516/how-to-make-all-org-files-under-a-folder-added-in-agenda-list-automatically
(setq org-agenda-files
      (directory-files-recursively my-org-files "org$" nil nil t))
;; "TODO" keywords
;; https://orgmode.org/manual/Workflow-states.html
(setq org-todo-keywords
      '((sequence
         "BASKET(b)"
         "TODO(t)"
         "IN_PROGRESS(p)"
         "WAITING(w)"
         "HABIT(h)"
         "|"
         "DONE(d)"
         "CANCELED(c)")))
;; Faces for TODO keywords
;; https://orgmode.org/manual/Faces-for-TODO-keywords.html
;; M-x list-colors-display
(setq org-todo-keyword-faces
      '(("BASKET" :foreground "royalblue2")
        ("HABIT" :foreground "yellow2")
        ("WAITING" :foreground "magenta1")
        ("CANCELED" :foreground "brown2")))
;; PDF open with
;; https://stackoverflow.com/questions/8834633/how-do-i-make-org-mode-open-pdf-files-in-evince/8836108#8836108
(add-hook
 'org-mode-hook
 '(lambda ()
    (delete '("\\.pdf\\'" . default) org-file-apps)
    (add-to-list 'org-file-apps `("\\.pdf\\'" . ,my-pdf-viewer-cmd))))
;; Active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages '((shell . t) (python . t)))
