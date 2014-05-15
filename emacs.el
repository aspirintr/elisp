
;;; Load color-theme
(add-to-list 'load-path *my-color-theme-install-dir*)
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-gnome2)))

;;; Overwriting selected text
(delete-selection-mode t)

;;; Show The Full Path Of The Current File In The Frame Bar
(setq frame-title-format '((:eval buffer-file-name)))

;;; C-x b autocomplete buffer name
(iswitchb-mode 1)

;;; WINDOW CONTROLS
;;; Easy travel between windows
(global-set-key [s-left] 'windmove-left)          ; move to left windnow
(global-set-key [s-right] 'windmove-right)        ; move to right window
(global-set-key [s-up] 'windmove-up)              ; move to upper window
(global-set-key [s-down] 'windmove-down)          ; move to downer window
;;; Window enlargement/shinkage
(global-set-key (kbd "s-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "s-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-C-<down>") 'shrink-window)
(global-set-key (kbd "s-C-<up>") 'enlarge-window)

;;;CODE EDITING
;;;Comment line or add comment to the end
(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
(global-set-key "\M-;" 'comment-dwim-line)

