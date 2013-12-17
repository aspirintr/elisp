
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