;;;;;;;; Calendar ;;;;;;;;
;; calendar: week start
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Move-to-Beginning-or-End.html
(setq calendar-week-start-day 1)
;; calendar: show week numbers
;; https://www.emacswiki.org/emacs/CalendarWeekNumbers
(copy-face font-lock-constant-face 'calendar-iso-week-face)
(set-face-attribute 'calendar-iso-week-face nil
                    :height 0.7)
(setq calendar-intermonth-text
      '(propertize
        (format "%2d"
                (car
                 (calendar-iso-from-absolute
                  (calendar-absolute-from-gregorian (list month day year)))))
        'font-lock-face 'calendar-iso-week-face))
