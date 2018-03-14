;;
;; C, C++
;;
;; Default is google-c-style
(add-hook 'c-mode-common-hook 'google-set-c-style)

;; linux c mode with tabs
(require 'linux-tabs-c-style)

;; MLton C code style
(require 'mlton-c-style)

;; Use project-specific modes
(defun maybe-mlton-c-style ()
  (when (and buffer-file-name
	     (string-match "mlton" buffer-file-name))
    (c-set-style "MLton")))

(add-hook 'c-mode-hook 'maybe-mlton-c-style)

(add-hook 'c-mode-hook (lambda ()
                           (irony-mode)
                           (irony-eldoc)
                           (platformio-conditionally-enable)))

;; Enable irony for all c++ files, and platformio-mode only
;; when needed (platformio.ini present in project root).
(add-hook 'c++-mode-hook (lambda ()
                           (irony-mode)
                           (irony-eldoc)))
