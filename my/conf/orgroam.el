;;;;;;;; Org roam ;;;;;;;;
;; https://www.orgroam.com/manual.html
(setq org-roam-directory (file-truename my-org-directory))
;; https://org-roam.discourse.group/t/how-to-make-org-roam-ui-work-for-more-than-one-org-roam-dir/3749
(setq org-roam-db-location
      (expand-file-name "org-roam.db" my-org-directory))
(org-roam-db-autosync-mode)
(setq org-roam-graph-viewer my-web-browser)
