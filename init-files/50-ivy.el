;;
;; Ivy settings
;;
;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
(setq ivy-use-virtual-buffers t)
;; number of result lines to display
(setq ivy-height 10)
;; no regexp by default
;; (setq ivy-initial-inputs-alist nil)
;; configure regexp engine.
(setq ivy-re-builders-alist
      ;; allow input not in order
      '((t   . ivy--regex-ignore-order)))

(ivy-mode 1)
