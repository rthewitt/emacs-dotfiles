;;; package -- Summary
;;; Commentary:
;;; Code:

;; unset irritant suspend-frame
(global-unset-key (kbd "C-x z"))
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-M-z"))
(global-unset-key (kbd "C-x C-z"))

;; join lines!
(global-set-key (kbd "C-\\") 'join-line)

;; compilation
(global-set-key (kbd "C-c ,c") 'compile)

;; train myself not to use return or backspace
(define-key prog-mode-map (kbd "<return>") 'ignore)
(define-key prog-mode-map (kbd "<backspace>") 'ignore)

;; evaluation
(define-key emacs-lisp-mode-map (kbd "C-c C-r") 'eval-region)
(define-key emacs-lisp-mode-map (kbd "C-c C-e") 'eval-and-replace)
(define-key emacs-lisp-mode-map (kbd "C-c C-v") 'eval-buffer)

;; indentation
(global-set-key (kbd "C-I") 'indent-region)
(global-set-key (kbd "C-c i") (lambda () (interactive)
				(indent-region (point-min) (point-max))))

;; commands
(global-set-key (kbd "C-x m") 'execute-extended-command)

;; movement and editing
(global-set-key (kbd "M-n") (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "M-p") (lambda () (interactive) (previous-line 5)))
(global-set-key (kbd "C-q") 'comment-or-uncomment-region)
(global-set-key (kbd "C-a") 'move-smart-beginning-of-line)
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "M-u") 'zap-to-char)
(global-set-key (kbd "M-E") 'er/expand-region)

(global-set-key (kbd "C-;") 'ace-jump-word-mode)
(global-set-key (kbd "C-:") 'ace-jump-char-mode)
(global-set-key (kbd "M-m") 'new-line-below)

(global-set-key (kbd "M-j") 'better-registers-jump-to-register)

;; window and buffer manipulation
(global-set-key (kbd "C->") 'maximize-window-vertically)
(global-set-key (kbd "C-<") 'minimize-window-vertically)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-i") 'other-frame)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-k") 'kill-buffer)
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-vertically)
(global-set-key (kbd "M-3") 'split-window-horizontally)
(global-set-key (kbd "C-x 2") 'vsplit-last-buffer)
(global-set-key (kbd "C-x 3") 'hsplit-last-buffer)
(global-set-key (kbd "C-c -") 'swap-buffers-in-windows)

(define-key ctl-x-map "n" 'narrow-or-widen-dwim)

;; other mode compatibilities
(define-key better-registers-map (kbd "<f1>") nil)
(define-key better-registers-map (kbd "C-j") nil)

(define-key dired-mode-map (kbd "M-o") 'other-window)
(define-key yaml-mode-map (kbd "C-m") 'newline-and-indent)
(define-key text-mode-map (kbd "M-r") 'paredit-splice-sexp)

(define-key markdown-mode-map (kbd "C-c C-f") nil)
(define-key markdown-mode-map (kbd "M-h") nil)

(define-key sgml-mode-map (kbd "C-c C-f") nil)
(define-key sgml-mode-map (kbd "C-M-f") 'sgml-skip-tag-forward)
(define-key sgml-mode-map (kbd "C-M-b") 'sgml-skip-tag-backward)

(provide 'init-keybindings)
;;; init-keybindings ends here
