
;;; Load color-theme
(add-to-list 'load-path *my-color-theme-install-dir*)
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-gnome2)))
