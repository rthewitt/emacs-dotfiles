;;; init-magit.el -- Configures the amazing and magic magit interface to git.
;;; Commentary:
;;; Code:
(require 'magit)

;; Remove warning for `magit-auto-revert-mode'
(setq magit-last-seen-setup-instructions "1.4.0")

;; Always open magit in the same window
(setq magit-status-buffer-switch-function 'switch-to-buffer)

;; Don't add remote prefix when creating a tracking branch
(setq magit-default-tracking-name-function 'magit-default-tracking-name-branch-only)

(defadvice magit-status
    (before magit-save-before-status activate)
  "Save all buffers before magit status."
  (save-some-buffers t))

;; magit showlevels redefinition
(rr/define-bindings magit-mode-map
                    '(("s" . magit-status)
                      ("X" . magit-reset-head-hard)
                      ("C-1" . magit-section-show-level-1-all)
                      ("C-2" . magit-section-show-level-2-all)
                      ("C-3" . magit-section-show-level-3-all)
                      ("C-4" . magit-section-show-level-4-all)))

(define-key magit-mode-map (kbd "C-x C-s") 'ignore)

(rr/expose-bindings magit-mode-map '("M-1" "M-2" "M-3"))

(provide 'init-magit)
;;; init-magit.el ends here
