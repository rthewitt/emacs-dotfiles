;;; init-octave.el -- Configures minor things used to run octave inside Emacs.
;;; Commentary:
;;; Code:
(require 'octave)

(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-to-list 'auto-mode-alist '("\\.oct$" . octave-mode))

;; -- keybindings --
(rr/expose-default-bindings octave-mode-map)
(define-key octave-mode-map (kbd "C-c j d") 'octave-help)
(define-key octave-mode-map (kbd "C-c r b") 'octave-send-buffer)

;; This fixes an issue where the plot hangs.
(setq inferior-octave-startup-args '("-i"))

(provide 'init-octave)
;;; init-octave.el ends here
