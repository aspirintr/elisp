elisp
=====
This folder is for emacs initialization. Setting up emacs with same settings each time after a format is painful. I found an amazing idea on internet, here: http://www.jimmenard.com/emacs_tips.html#my-dot-emacs

The idea is simple. 
* Have seperate `dot_emacs.el` file for each machine you are using and link to your `~/.emacs.el` init file to `machine_name/dot_emacs.el` file after a clean installation of emacs,
* By this way, first `before.el` file, then `emacs.el` file (which is in this folder not in ~/ folder.) and then `after.el` file will be loaded.

First, link your `~/.emacs` file to `here/machinename/dot_emacs.el` file:

```bash
$ ln -s ~/Desktop/elisp/machines/tantuni/dot_emacs.el ~/.emacs
```

Here the file `~/Desktop/elisp/machines/tantuni/dot_emacs.el` contains something like:

```elisp
  ;; -*- emacs-lisp -*-
  (defvar *my-emacs-lib-dir* "~/Desktop/elisp/")
  (load-file (concat *my-emacs-lib-dir* "bootstrap-init.el"))
  (bootstrap-init "machines" "tantuni")
```


